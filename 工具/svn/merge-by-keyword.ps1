<#
.SYNOPSIS
    TortoiseSVN 关键字合并脚本 - PowerShell 版本
    根据关键字和作者搜索并合并SVN提交

.DESCRIPTION
    该脚本用于在指定时间范围内搜索包含特定关键字的SVN提交，并将这些提交合并到本地工作副本。
    支持按作者过滤、冲突检测、已合并修订版过滤等功能。

.PARAMETER Keyword
    要搜索的提交信息关键字（必填）

.PARAMETER WorkPath
    本地工作副本路径（必填）

.PARAMETER RepoURL
    远程 SVN 仓库 URL（必填）

.PARAMETER Author
    提交作者，默认为 "baozl"

.PARAMETER DaysBack
    搜索时间范围（天数），默认为 30 天

.PARAMETER SkipRevert
    跳过工作副本的 revert 操作

.EXAMPLE
    .\merge-by-keyword.ps1 -Keyword "修复bug" -WorkPath "D:\Projects\trunk" -RepoURL "https://svn.example.com/project"

.EXAMPLE
    .\merge-by-keyword.ps1 -Keyword "功能更新" -WorkPath "D:\Projects\trunk" -RepoURL "https://svn.example.com/project" -Author "user" -DaysBack 15
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true, HelpMessage="请输入要搜索的提交信息关键字")]
    [string]$Keyword,
    
    [Parameter(Mandatory=$true, HelpMessage="请输入工作副本路径")]
    [string]$WorkPath,
    
    [Parameter(Mandatory=$true, HelpMessage="请输入远程工程路径")]
    [string]$RepoURL,
    
    [Parameter(HelpMessage="提交作者")]
    [string]$Author = "baozl",
    
    [Parameter(HelpMessage="搜索时间范围（天数）")]
    [int]$DaysBack = 30,
    
    [Parameter(HelpMessage="跳过工作副本的 revert 操作")]
    [switch]$SkipRevert
)

# 首先定义所有函数，确保在使用前都被定义

function Invoke-SvnCommand {
    <#
    .SYNOPSIS
        执行 SVN 命令并返回结果
    
    .DESCRIPTION
        封装 SVN 命令执行，处理路径切换、错误捕获和结果返回
    
    .PARAMETER WorkingDirectory
        执行命令的工作目录
    
    .PARAMETER Arguments
        SVN 命令参数数组
    
    .RETURN
        包含命令执行结果的哈希表
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="执行命令的工作目录")]
        [string]$WorkingDirectory,
        
        [Parameter(Mandatory=$true, HelpMessage="SVN命令参数数组")]
        [string[]]$Arguments
    )
    
    $originalLocation = Get-Location
    try {
        Set-Location $WorkingDirectory
        
        # 打印执行的命令
        Write-Host "执行 SVN 命令: svn $($Arguments -join ' ')" -ForegroundColor Cyan
        
        # 使用PowerShell的调用操作符直接执行命令，保持参数数组的完整性
        $output = & svn @Arguments 2>&1
        $exitCode = $LASTEXITCODE
        
        return @{
            Success = ($exitCode -eq 0)
            Output = $output -join "`n"
            ExitCode = $exitCode
        }
    }
    catch {
        return @{
            Success = $false
            Output = "执行命令时发生错误: $($_.Exception.Message)"
            ExitCode = -1
        }
    }
    finally {
        Set-Location $originalLocation.Path
    }
}

function Check-WorkingCopyBeforeResume {
    <#
    .SYNOPSIS
        检查工作副本状态，确保没有未解决的冲突
    
    .DESCRIPTION
        在跳过 revert 操作后检查工作副本状态，确保可以安全地继续合并操作
    #>
    Write-Host "[检查] 工作副本状态..." -ForegroundColor Yellow
    
    # 只检查是否有未解决的冲突
    $statusResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("status")
    if ($statusResult.Success) {
        $conflictFiles = $statusResult.Output -split "`n" | Where-Object { $_ -match "^C" }
        $conflictFilesCount = @($conflictFiles).Count
        if ($conflictFilesCount -gt 0) {
            Write-Host "❌ 发现未解决的冲突，请先解决冲突：" -ForegroundColor Red
            foreach ($file in $conflictFiles) {
                Write-Host "  $($file.Trim())" -ForegroundColor Red
            }
            exit 1
        } else {
            Write-Host "✅ 工作副本状态正常，可以继续合并" -ForegroundColor Green
        }
    } else {
        Write-Host "⚠️  无法完全检查工作副本状态：$($statusResult.Output)" -ForegroundColor Yellow
    }
}

function Get-MergedRevisions {
    <#
    .SYNOPSIS
        获取已合并的修订版列表，并支持按时间范围过滤
    
    .DESCRIPTION
        使用svn mergeinfo命令获取从源到目标已合并的修订版，并支持按时间范围过滤
        当提供DaysBack参数时，只返回指定天数内已合并的修订版
    
    .PARAMETER SourceUrl
        源仓库URL
    
    .PARAMETER TargetPath
        目标工作副本路径
    
    .PARAMETER DaysBack
        搜索时间范围（天数），默认值为30天
        如果值大于0，将只返回指定天数内已合并的修订版
    
    .RETURN
        已合并的修订版号数组
    #>
    param(
        [string]$SourceUrl,
        [string]$TargetPath,
        [int]$DaysBack
    )
    
    Write-Host "正在使用 svn mergeinfo 获取已合并的修订版..." -ForegroundColor Gray
    $mergedRevisions = @()
    
    try {
        # 构建 SVN mergeinfo 命令参数
        $svnArgs = @("mergeinfo", $SourceUrl, "--show-revs", "merged")
        
        # 如果提供了 DaysBack 参数，添加时间范围过滤
        if ($DaysBack -gt 0) {
            $startDate = (Get-Date).AddDays(-$DaysBack).ToString("yyyy-MM-dd", [System.Globalization.CultureInfo]::InvariantCulture)
            $revisionRange = "{$startDate}`:HEAD"
            $svnArgs += "-r" 
            $svnArgs += $revisionRange
        }
        
        # 执行 SVN mergeinfo 命令
        $mergeInfoResult = Invoke-SvnCommand -WorkingDirectory $TargetPath -Arguments $svnArgs
        
        if ($mergeInfoResult.Success -and -not [string]::IsNullOrWhiteSpace($mergeInfoResult.Output)) {
            # 解析输出，提取修订版号
            $mergedRevisions = $mergeInfoResult.Output -split "`n" | 
                Where-Object { $_ -match "^r(\d+)" } | 
                ForEach-Object { 
                    if ($_ -match "^r(\d+)") {
                        $matches[1]
                    }
                } |
                Where-Object { -not [string]::IsNullOrEmpty($_) }
            
            $mergedRevisionsCount = @($mergedRevisions).Count
            Write-Host "✅ 使用 svn mergeinfo 获取到 $mergedRevisionsCount 个已合并的修订版" -ForegroundColor Green
            
            # 如果有已合并的修订版，显示前10个
            if ($mergedRevisionsCount -gt 0) {
                $displayCount = [Math]::Min($mergedRevisionsCount, 10)
                $displayList = $mergedRevisions[0..($displayCount-1)] -join ", "
                if ($mergedRevisionsCount -gt 10) {
                    $displayList += " ... (共 $mergedRevisionsCount 个)"
                }
                Write-Host "已合并的修订版: $displayList" -ForegroundColor Gray
            }
        } else {
            Write-Host "ℹ️ 未找到已合并的修订版信息，可能是第一次合并" -ForegroundColor Yellow
        }
    }
    catch {
        Write-Host "⚠️ 获取已合并修订版信息时出错: $($_.Exception.Message)" -ForegroundColor Yellow
        # 不退出，返回空列表继续处理
    }
    
    return $mergedRevisions
}

function Filter-AlreadyMergedRevisions {
    <#
    .SYNOPSIS
        过滤掉已合并的修订版
    
    .DESCRIPTION
        从待合并列表中过滤掉已经合并到目标路径的修订版
    
    .PARAMETER MergeList
        待合并的修订版列表
    
    .PARAMETER SourceUrl
        源仓库URL
    
    .PARAMETER TargetPath
        目标工作副本路径
    
    .RETURN
        过滤后的待合并修订版列表
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="待合并的修订版列表")]
        [array]$MergeList,
        
        [Parameter(Mandatory=$true, HelpMessage="源仓库 URL")]
        [string]$SourceUrl,
        
        [Parameter(Mandatory=$true, HelpMessage="目标工作副本路径")]
        [string]$TargetPath
    )
    
    Write-Host "`n正在过滤已合并的修订版..." -ForegroundColor Yellow
    
    # 获取已合并的修订版列表，并应用时间范围过滤
    # DaysBack参数确保只检查指定天数内已合并的修订版，与搜索提交记录的时间范围保持一致
    $mergedRevisions = Get-MergedRevisions -SourceUrl $SourceUrl -TargetPath $TargetPath -DaysBack $DaysBack
    
    $mergedRevisionsCount = @($mergedRevisions).Count
    $mergeListCount = @($MergeList).Count
    
    if ($mergedRevisionsCount -eq 0) {
        Write-Host "✅ 没有已合并的修订版，所有 $mergeListCount 个修订版都需要处理" -ForegroundColor Green
        return $MergeList
    }
    
    # 过滤掉已合并的修订版
    $filteredList = @()
    $skippedCount = 0
    
    foreach ($item in $MergeList) {
        if ($item.Revision -in $mergedRevisions) {
            $shortMessage = if ($item.Message.Length -gt 50) { 
                $item.Message.Substring(0, 47) + "..." 
            } else { 
                $item.Message 
            }
            Write-Host "跳过已合并的修订版 $($item.Revision) - $shortMessage" -ForegroundColor DarkGray
            $skippedCount++
        } else {
            $filteredList += $item
        }
    }
    
    $filteredListCount = @($filteredList).Count
    Write-Host "✅ 过滤完成: 跳过 $skippedCount 个已合并的修订版，剩余 $filteredListCount 个待合并" -ForegroundColor Green
    
    return $filteredList
}

function Initialize-WorkingCopy {
    Write-Host "`n正在初始化工作副本..." -ForegroundColor Yellow
    
    $cleanupResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("cleanup")
    if (-not $cleanupResult.Success) {
        Write-Host "错误：clean up 执行失败" -ForegroundColor Red
        Write-Host "SVN 输出: $($cleanupResult.Output)" -ForegroundColor Red
        exit 1
    }
    
    # 如果指定了 SkipRevert 参数，则跳过 revert 操作
    if (-not $SkipRevert) {
        $revertResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("revert", ".", "-R")
        if (-not $revertResult.Success) {
            Write-Host "错误：revert 执行失败" -ForegroundColor Red
            Write-Host "SVN 输出: $($revertResult.Output)" -ForegroundColor Red
            exit 1
        }
    }
    
    $updateResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("update")
    if (-not $updateResult.Success) {
        Write-Host "错误：工作副本更新失败" -ForegroundColor Red
        Write-Host "SVN 输出: $($updateResult.Output)" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "工作副本初始化完成" -ForegroundColor Green
}

function Convert-SvnDateToSortable {
    <#
    .SYNOPSIS
        将SVN日期字符串转换为可排序的DateTime对象
    
    .DESCRIPTION
        解析SVN日志中的日期字符串，提取并转换为可用于排序的DateTime对象
    
    .PARAMETER SvnDate
        SVN日期字符串（格式示例: "2025-11-24 14:50:38 +0800 (周一, 24 11月 2025)"
    
    .RETURN
        转换后的DateTime对象，解析失败时返回最小日期值
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="SVN 日期字符串")]
        [string]$SvnDate
    )
    
    # SVN 日期格式示例: "2025-11-24 14:50:38 +0800 (周一, 24 11月 2025)"
    # 提取主要日期部分: "2025-11-24 14:50:38 +0800"
    if ($SvnDate -match "(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} [+-]\d{4})") {
        $datePart = $matches[1]
        try {
            # 使用 InvariantCulture 确保跨区域设置的日期解析一致性
            return [DateTime]::ParseExact($datePart, "yyyy-MM-dd HH:mm:ss zzz", [System.Globalization.CultureInfo]::InvariantCulture)
        }
        catch {
            Write-Warning "日期解析失败: $SvnDate" -ForegroundColor Yellow
            # 如果解析失败，返回最小日期确保排序
            return [DateTime]::MinValue
        }
    }
    else {
        Write-Warning "无法识别的日期格式: $SvnDate" -ForegroundColor Yellow
    }
    
    return [DateTime]::MinValue
}

function Get-SvnLogsByKeyword {
    <#
    .SYNOPSIS
        根据关键字和作者搜索SVN提交记录
    
    .DESCRIPTION
        在指定时间范围内搜索包含特定关键字的SVN提交记录，并支持按作者过滤
    
    .RETURN
        符合条件的提交记录数组
    #>
    # 计算时间范围：上限是HEAD（最新提交），下限是上限减去DaysBack
    $endDate = "HEAD"
    $startDate = (Get-Date).AddDays(-$DaysBack).ToString("yyyy-MM-dd", [System.Globalization.CultureInfo]::InvariantCulture)
    $revisionRange = "{$startDate}`:$endDate"
    
    Write-Host "搜索时间范围: $startDate 至 $endDate" -ForegroundColor Gray

    try {
        # 构建 SVN 日志命令参数 - 严格按照用户要求：使用 --search 进行作者过滤
        $svnArgs = @("log", $RepoURL, "-r", $revisionRange)
        
        # 根据用户要求：必须使用 --search 进行作者过滤
        if (-not [string]::IsNullOrWhiteSpace($Author)) {
            $svnArgs += "--search"
            $svnArgs += $Author
        } else {
            Write-Host "⚠️ 未指定作者，将获取所有提交记录" -ForegroundColor Yellow
        }
        
        Write-Host "正在获取 SVN 日志..." -ForegroundColor Gray
        $logResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments $svnArgs
        
        if (-not $logResult.Success) {
            throw "SVN 命令执行失败，请检查仓库 URL 和网络连接"
        }
        
        $logOutput = $logResult.Output
        
        # 如果没有输出，直接返回空列表
        if ([string]::IsNullOrWhiteSpace($logOutput)) {
            Write-Host "⚠️ SVN 日志为空，没有找到匹配的提交记录" -ForegroundColor Yellow
            Write-Host "ℹ️ 建议检查：1) 关键字是否正确 2) 作者是否正确 3) 时间范围是否合适" -ForegroundColor Gray
            return @()
        }
    }
    catch {
        Write-Host "错误：无法获取 SVN 日志 - $($_.Exception.Message)" -ForegroundColor Red
        exit 1
    }

    # 解析文本格式的日志输出
    $mergeList = @()
    $lines = $logOutput -split "`r?`n"
    $currentLineIndex = 0

    while ($currentLineIndex -lt $lines.Count) {
        $line = $lines[$currentLineIndex]
        
        # 检测修订版行 (格式: r151701 | yuanrh | 2025-11-24 14:50:38 +0800 (周一, 24 11月 2025) | 1 line)
        if ($line -match "^r(\d+) \| ([^|]+) \| (.+) \| \d+ lines?$") {
            $revision = $matches[1]
            $author = $matches[2].Trim()
            $date = $matches[3].Trim()
            
            # 跳过分隔线
            $currentLineIndex++
            if ($currentLineIndex -lt $lines.Count -and $lines[$currentLineIndex] -match "^-{72}$") {
                $currentLineIndex++
            }
            
            # 收集消息内容（直到下一个分隔线或修订版行）
            $messageLines = @()
            while ($currentLineIndex -lt $lines.Count) {
                # 如果遇到下一个修订版行或分隔线，停止收集
                if ($lines[$currentLineIndex] -match "^-{72}$" -or $lines[$currentLineIndex] -match "^r\d+ \|") {
                    break
                }
                
                # 添加非空行到消息内容
                if (-not [string]::IsNullOrWhiteSpace($lines[$currentLineIndex])) {
                    $messageLines += $lines[$currentLineIndex]
                }
                $currentLineIndex++
            }
            
            $message = ($messageLines -join "`n").Trim()
            
            # 根据用户要求：在本地进行关键字筛选
            $keywordMatch = $message -like "*$Keyword*"
            
            # 同时满足作者（已通过--search筛选）和本地关键字条件
            if ($keywordMatch) {
                $mergeList += [PSCustomObject]@{ 
                    Revision = $revision
                    Author = $author
                    Date = $date
                    Message = $message
                    SortableDate = Convert-SvnDateToSortable -SvnDate $date
                }
            }
            
            # 跳过当前的分隔线
            if ($currentLineIndex -lt $lines.Count -and $lines[$currentLineIndex] -match "^-{72}$") {
                $currentLineIndex++
            }
        } else {
            $currentLineIndex++
        }
    }

    # 使用可排序的日期进行排序
    $mergeListCount = @($mergeList).Count
    if ($mergeListCount -gt 0) {
        $mergeList = $mergeList | Sort-Object SortableDate
    }

    Write-Host "找到 $mergeListCount 个匹配的提交记录" -ForegroundColor Green
    return $mergeList
}

function Show-MergeCandidateList {
    <#
    .SYNOPSIS
        显示待合并的提交列表
    
    .DESCRIPTION
        格式化显示待合并的提交记录，包括修订版号、时间、作者和提交信息
    
    .PARAMETER MergeList
        待合并的提交记录列表
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="待合并的提交记录列表")]
        [array]$MergeList
    )
    
    $mergeListCount = @($MergeList).Count
    Write-Host "`n待合并提交列表 ($mergeListCount 个)：" -ForegroundColor Green
    Write-Host "======================" -ForegroundColor Green
    
    if ($mergeListCount -eq 0) {
        Write-Host "没有找到需要合并的提交" -ForegroundColor Yellow
        return
    }
    
    foreach ($item in $MergeList) {
        $status = "🟢 待合并"
        $color = "Cyan"
        
        Write-Host "修订版: $($item.Revision) $status" -ForegroundColor $color
        Write-Host "时间: $($item.Date)" -ForegroundColor Gray
        Write-Host "作者: $($item.Author)" -ForegroundColor Gray
        
        # 显示消息的前50个字符
        $shortMessage = if ($item.Message.Length -gt 50) { 
            $item.Message.Substring(0, 47) + "..." 
        } else { 
            $item.Message 
        }
        Write-Host "信息: $shortMessage" -ForegroundColor White
        Write-Host "--------------------"
    }
}

function Test-RevisionMerge {
    <#
    .SYNOPSIS
        测试合并修订版
    
    .DESCRIPTION
        对指定的修订版进行测试合并，检查是否会产生冲突
    
    .PARAMETER MergeList
        待测试的修订版列表
    
    .RETURN
        可能产生冲突的修订版列表
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="待测试的修订版列表")]
        [array]$MergeList
    )
    
    Write-Host "`n开始测试合并..." -ForegroundColor Yellow
    $conflictRevisions = @()

    foreach ($item in $MergeList) {
        Write-Host "测试合并修订版 $($item.Revision)..." -NoNewline
        try {
            # 在工作副本目录中执行SVN命令
            $testResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("merge", $RepoURL, "-c", $($item.Revision), "--dry-run")
            if (-not $testResult.Success) {
                Write-Host " [可能有问题]" -ForegroundColor Red
                $conflictRevisions += $item
            }
            else {
                Write-Host " [正常]" -ForegroundColor Green
            }
        }
        catch {
            Write-Host " [错误]" -ForegroundColor Red
            $conflictRevisions += $item
        }
    }

    return $conflictRevisions
}

function Invoke-RevisionMerge {
    <#
    .SYNOPSIS
        执行实际的修订版合并操作
    
    .DESCRIPTION
        对指定的修订版进行cherry-pick合并，并处理可能的冲突
    
    .PARAMETER MergeList
        待合并的修订版列表
    
    .RETURN
        合并结果数组
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="待合并的修订版列表")]
        [array]$MergeList
    )
    
    Write-Host "`n开始实际合并..." -ForegroundColor Yellow
    $mergeResults = @()
    $successCount = 0

    foreach ($item in $MergeList) {
        Write-Host "`n正在cherry-pick修订版 $($item.Revision)..." -ForegroundColor Cyan
        Write-Host "时间: $($item.Date)" -ForegroundColor Gray
        Write-Host "作者: $($item.Author)" -ForegroundColor Gray
        
        # 显示消息的前80个字符
        $shortMessage = if ($item.Message.Length -gt 80) { 
            $item.Message.Substring(0, 77) + "..." 
        } else { 
            $item.Message 
        }
        Write-Host "信息: $shortMessage" -ForegroundColor White
        
        try {
            # 在工作副本目录中执行SVN合并命令
            $mergeResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("merge", $RepoURL, "-c", $($item.Revision), "--accept", "postpone")
            
            # 检查合并后是否有冲突
            $statusResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments @("status")
            $hasConflicts = $false
            $conflictFiles = @()
            
            if ($statusResult.Success) {
                $conflictFiles = $statusResult.Output -split "`n" | Where-Object { $_ -match "^C" }
                $conflictFilesCount = @($conflictFiles).Count
                $hasConflicts = ($conflictFilesCount -gt 0)
            }
            
            $result = [PSCustomObject]@{
                Revision = $item.Revision
                Author = $item.Author
                Date = $item.Date
                Message = $item.Message
                Success = ($mergeResult.Success -and -not $hasConflicts)
                HasConflicts = $hasConflicts
                ConflictFiles = $conflictFiles
            }
            
            if ($result.Success) {
                Write-Host "✅ 修订版 $($item.Revision) cherry-pick 成功" -ForegroundColor Green
                $successCount++
                $mergeResults += $result
            } else {
                Write-Host "❌ 修订版 $($item.Revision) cherry-pick 出现冲突" -ForegroundColor Red
                
                if ($hasConflicts) {
                    Write-Host "冲突文件数量: $conflictFilesCount" -ForegroundColor Yellow
                    foreach ($file in $conflictFiles) {
                        Write-Host "  冲突文件: $($file.Trim())" -ForegroundColor Red
                    }
                }
                
                # 遇到第一个冲突，立即结束流程
                Write-Host "`n⚠️ 在修订版 $($item.Revision) 遇到冲突，合并流程已终止" -ForegroundColor Red
                Write-Host "请先解决当前冲突后再继续执行合并" -ForegroundColor Yellow
                
                $mergeResults += $result
                break
            }
        }
        catch {
            Write-Host "❌ 修订版 $($item.Revision) cherry-pick 失败: $($_.Exception.Message)" -ForegroundColor Red
            
            # 遇到错误，立即结束流程
            Write-Host "`n⚠️ 在修订版 $($item.Revision) 执行失败，合并流程已终止" -ForegroundColor Red
            Write-Host "请检查错误信息并解决后再继续执行合并" -ForegroundColor Yellow
            
            $mergeResults += [PSCustomObject]@{
                Revision = $item.Revision
                Author = $item.Author
                Date = $item.Date
                Message = $item.Message
                Success = $false
                HasConflicts = $true
                ConflictFiles = @()
            }
            break
        }
    }

    $mergeResultsCount = @($mergeResults).Count
    $failedCount = @($mergeResults | Where-Object { -not $_.Success }).Count
    
    Write-Host "`n合并统计:" -ForegroundColor Cyan
    Write-Host "成功: $successCount 个修订版" -ForegroundColor Green
    Write-Host "冲突: $failedCount 个修订版" -ForegroundColor Red

    return $mergeResults
}

function Show-MergeSummary {
    <#
    .SYNOPSIS
        显示合并结果摘要
    
    .DESCRIPTION
        格式化显示合并操作的结果，包括成功合并、冲突和统计信息
    
    .PARAMETER MergeResults
        合并结果数组
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="合并结果数组")]
        [array]$MergeResults
    )
    
    Write-Host "`n"
    Write-Host ("=" * 60) -ForegroundColor Green
    Write-Host "合并完成摘要" -ForegroundColor Green
    Write-Host ("=" * 60) -ForegroundColor Green

    $successRevisions = $MergeResults | Where-Object { $_.Success }
    $conflictRevisions = $MergeResults | Where-Object { -not $_.Success }
    
    $successRevisionsCount = @($successRevisions).Count
    $conflictRevisionsCount = @($conflictRevisions).Count
    $mergeResultsCount = @($MergeResults).Count

    Write-Host "`n✅ 成功合并的修订版 ($successRevisionsCount 个):" -ForegroundColor Green
    if ($successRevisionsCount -gt 0) {
        foreach ($result in $successRevisions) {
            Write-Host "  $($result.Revision) - $($result.Author) - $($result.Date)" -ForegroundColor Green
            Write-Host "  信息: $($result.Message)" -ForegroundColor Gray
        }
    } else {
        Write-Host "  无" -ForegroundColor Gray
    }

    if ($conflictRevisionsCount -gt 0) {
        Write-Host "`n❌ 合并冲突/失败的修订版 ($conflictRevisionsCount 个):" -ForegroundColor Red
        foreach ($result in $conflictRevisions) {
            Write-Host "  $($result.Revision) - $($result.Author) - $($result.Date)" -ForegroundColor Red
            Write-Host "  信息: $($result.Message)" -ForegroundColor Gray
            $conflictFilesCount = @($result.ConflictFiles).Count
            if ($conflictFilesCount -gt 0) {
                Write-Host "  冲突文件:" -ForegroundColor Yellow
                foreach ($file in $result.ConflictFiles) {
                    Write-Host "    $($file.Trim())" -ForegroundColor Yellow
                }
            }
        }
        
        Write-Host "`n💡 提示: 请先解决上述冲突，然后重新运行脚本继续合并" -ForegroundColor Cyan
    }

    Write-Host "`n📊 最终统计:" -ForegroundColor Cyan
    Write-Host "  总处理修订版数: $mergeResultsCount" -ForegroundColor White
    Write-Host "  成功合并: $successRevisionsCount" -ForegroundColor Green
    Write-Host "  合并冲突/失败: $conflictRevisionsCount" -ForegroundColor Red

    # 输出所有合并的Revision列表
    Write-Host "`n📋 已处理的 Revision 列表:" -ForegroundColor Cyan
    $allRevisions = $MergeResults | ForEach-Object { $_.Revision } | Sort-Object
    $allRevisionsCount = @($allRevisions).Count
    if ($allRevisionsCount -gt 0) {
        $revisionList = $allRevisions -join ", "
        Write-Host "  $revisionList" -ForegroundColor White
    } else {
        Write-Host "  无" -ForegroundColor Gray
    }
}

function Get-CommitInfo {
    <#
    .SYNOPSIS
        生成提交信息
    
    .DESCRIPTION
        根据合并结果生成SVN提交信息，包含成功合并的修订版和第一个冲突的修订版
    
    .PARAMETER BaseText
        基础提交文本
    
    .PARAMETER MergeResults
        合并结果列表
    
    .PARAMETER RepositoryUrl
        远程仓库URL
    
    .RETURN
        生成的提交信息字符串
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="基础提交文本")]
        [string]$BaseText,
        
        [Parameter(Mandatory=$true, HelpMessage="合并结果列表")]
        [array]$MergeResults,
        
        [Parameter(HelpMessage="远程仓库 URL")]
        [string]$RepositoryUrl = $RepoURL
    )
    
    $revisionsInOrder = @()  # 保持合并时的顺序
    $messageDetails = ""
    $hasIncludedConflict = $false
    
    if ($MergeResults -and $MergeResults.Count -gt 0) {
        foreach ($item in $MergeResults) {
            $revision = $item.Revision
            
            # 如果是成功的，总是包含
            if ($item.Success) {
                $revisionsInOrder += $revision
                $shortMessage = if ($item.Message.Length -gt 100) {
                    $item.Message.Substring(0, 97) + "..."
                } else {
                    $item.Message
                }
                # 使用字符串格式化避免冒号问题
                $messageDetails += "{0}: {1}`n" -f $revision, $shortMessage
            }
            # 如果是第一个冲突，也包含
            elseif (-not $hasIncludedConflict) {
                $revisionsInOrder += $revision
                $shortMessage = if ($item.Message.Length -gt 100) {
                    $item.Message.Substring(0, 97) + "..."
                } else {
                    $item.Message
                }
                # 使用字符串格式化避免冒号问题
                $messageDetails += "{0}: {1}`n" -f $revision, $shortMessage
                $hasIncludedConflict = $true
                
                # 包含第一个冲突后就停止
                break
            }
        }
    }
    
    # 查找第一个中文字符的位置
    $insertPosition = $BaseText.Length
    for ($i = 0; $i -lt $BaseText.Length; $i++) {
        $char = $BaseText[$i]
        if ([int]$char -ge 0x4E00 -and [int]$char -le 0x9FFF) {
            $insertPosition = $i
            break
        }
    }
    
    # 在第一个中文字符前插入 "[Merge] "
    $result = $BaseText.Insert($insertPosition, " [Merge] ")
    
    # 如果有合并的版本号，在后面追加列表
    if ($revisionsInOrder.Count -gt 0) {
        $revisionListText = "`n从 $RepositoryUrl 合并 " + ($revisionsInOrder -join ", ")
        $result += $revisionListText
        $result += "`n"
        $result += $messageDetails
    }
    
    return $result.Trim()
}

function Main {
    <#
    .SYNOPSIS
        主函数，整合所有合并流程
    
    .DESCRIPTION
        协调所有合并相关函数的调用，实现完整的关键字合并流程
        包括：初始化、搜索、过滤、测试合并和实际合并操作
    #>
    # 保存当前工作路径
    $originalPath = Get-Location
    
    try {
        # 1. 显示脚本标题和配置信息
        Write-Host ("=" * 60) -ForegroundColor Green
        Write-Host "TortoiseSVN 关键字合并脚本" -ForegroundColor Green
        Write-Host (("=" * 60) + "`n") -ForegroundColor Green
        
        Write-Host "搜索关键字: $Keyword" -ForegroundColor Cyan
        Write-Host "合并路径: $RepoURL ➡️ $WorkPath" -ForegroundColor Cyan
        
        if (-not [string]::IsNullOrWhiteSpace($Author)) {
            Write-Host "作者限制: $Author" -ForegroundColor Cyan
        }
        Write-Host "时间范围: 最近 $DaysBack 天" -ForegroundColor Cyan

        # 2. 验证工作副本路径
        if (-not (Test-Path $WorkPath)) {
            Write-Host "错误：工作副本路径不存在: $WorkPath" -ForegroundColor Red
            exit 1
        }

        # 3. 初始化工作副本
        Initialize-WorkingCopy

        # 4. 检查工作副本是否干净
        Check-WorkingCopyBeforeResume

        # 5. 搜索包含关键字的提交记录
        Write-Host "`n正在搜索包含关键字 '$Keyword' 的提交记录..." -ForegroundColor Yellow
        $mergeList = Get-SvnLogsByKeyword
        $mergeListCount = @($mergeList).Count
        
        if ($mergeListCount -eq 0) {
            Write-Host "❌ 没有找到匹配关键字的提交记录" -ForegroundColor Yellow
            return
        }

        Write-Host "✅ 找到 $mergeListCount 个包含关键字的提交" -ForegroundColor Green

        # 6. 过滤已合并的修订版
        $mergeList = Filter-AlreadyMergedRevisions -MergeList $mergeList -SourceUrl $RepoURL -TargetPath $WorkPath
        
        $mergeListCount = @($mergeList).Count
        if ($mergeListCount -eq 0) {
            Write-Host "✅ 所有匹配的修订版都已经合并过了！" -ForegroundColor Green
            return
        }

        # 7. 显示待合并的提交列表
        Show-MergeCandidateList -MergeList $mergeList

        # 8. 测试合并（可选择跳过）
        $skipTest = Read-Host "`n是否跳过测试合并？(按Enter进行测试，输入'skip'跳过)"
        $conflictRevisions = @()
        
        if ($skipTest -notin @('s', 'S', 'skip', 'Skip', 'SKIP')) {
            $conflictRevisions = Test-RevisionMerge -MergeList $mergeList
            
            $conflictRevisionsCount = @($conflictRevisions).Count
            if ($conflictRevisionsCount -gt 0) {
                Write-Host "`n⚠️ 测试合并发现可能的问题，建议先处理" -ForegroundColor Red
                $conflictRevisionNumbers = $conflictRevisions | ForEach-Object { $_.Revision }
                Write-Host "问题修订版: $($conflictRevisionNumbers -join ', ')" -ForegroundColor Yellow
                return
            }
            Write-Host "✅ 测试合并完成，未发现冲突" -ForegroundColor Green
            Read-Host "`n按 Enter 键开始实际合并"
        } else {
            Write-Host "`n⚠️ 跳过测试合并，直接开始实际合并..." -ForegroundColor Yellow
        }

        # 9. 执行实际合并
        $mergeResults = Invoke-RevisionMerge -MergeList $mergeList

        # 10. 显示合并结果摘要
        Show-MergeSummary -MergeResults $mergeResults

        # 11. 生成合并信息
        $mergedInfo = Get-CommitInfo -BaseText $Keyword -MergeResults $mergeResults -RepositoryUrl $RepoURL
        Write-Host "`n合并信息:" -ForegroundColor Magenta
        Write-Host $mergedInfo -ForegroundColor White

        Write-Host "`n✅ 合并脚本执行完成！" -ForegroundColor Green
    }
    catch {
        Write-Host "`n❌ 脚本执行过程中发生错误: $($_.Exception.Message)" -ForegroundColor Red
        exit 1
    }
    finally {
        # 恢复原始工作路径
        Set-Location $originalPath.Path
    }
}

# 执行主函数
Main