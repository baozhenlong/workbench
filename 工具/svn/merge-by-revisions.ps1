<#
.SYNOPSIS
    TortoiseSVN 修订版合并脚本 - PowerShell 版本
    根据指定的修订版列表合并 SVN 提交

.DESCRIPTION
    该脚本用于将指定的 SVN 修订版列表合并到本地工作副本。
    支持冲突检测、已合并修订版过滤、工作副本初始化等功能。

.PARAMETER Revisions
    要合并的修订版列表，用逗号分隔

.PARAMETER WorkPath
    本地工作副本路径

.PARAMETER RepoURL
    远程 SVN 仓库 URL

.PARAMETER SkipRevert
    跳过工作副本的 revert 操作

.PARAMETER DaysBack
    搜索时间范围（天数），用于过滤已合并的修订版
    只检查指定天数内已合并的修订版，默认值为 30 天

.EXAMPLE
    .\merge-by-revisions.ps1 -Revisions "1234,5678,9012" -WorkPath "D:\Projects\trunk" -RepoURL "https://svn.example.com/project"

.EXAMPLE
    .\merge-by-revisions.ps1 -Revisions "1234,5678" -WorkPath "D:\Projects\trunk" -RepoURL "https://svn.example.com/project" -SkipRevert
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true, HelpMessage="请输入要合并的修订版列表，用逗号分隔")]
    [string]$Revisions,
    
    [Parameter(Mandatory=$true, HelpMessage="请输入工作副本路径")]
    [string]$WorkPath,
    
    [Parameter(Mandatory=$true, HelpMessage="请输入远程工程路径")]
    [string]$RepoURL,
    
    [Parameter(HelpMessage="跳过工作副本的 revert 操作")]
    [switch]$SkipRevert,
    
    [Parameter(HelpMessage="搜索时间范围（天数），用于过滤已合并的修订版")]
    [int]$DaysBack = 30
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
    # DaysBack参数确保只检查指定天数内已合并的修订版，提高过滤效率
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
            Write-Host "跳过已合并的修订版 $($item.Revision)" -ForegroundColor DarkGray
            $skippedCount++
        } else {
            $filteredList += $item
        }
    }
    
    $filteredListCount = @($filteredList).Count
    Write-Host "✅ 过滤完成: 跳过 $skippedCount 个已合并的修订版（$filteredList），剩余 $filteredListCount 个待合并" -ForegroundColor Green
    
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

# 辅助函数：解析单个修订版的SVN日志
function Parse-SvnLog {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Rev,
        
        [Parameter(Mandatory=$true)]
        [string]$LogOutput
    )
    
    $cleanedLogOutput = $LogOutput.Trim()
    
    # 如果日志为空，返回空结果
    if ([string]::IsNullOrWhiteSpace($cleanedLogOutput)) {
        Write-Host "⚠️ 修订版 $Rev 没有 log 信息" -ForegroundColor Yellow
        return $null
    }
    
    $lines = $cleanedLogOutput -split "`r?`n"
    
    # 使用单个正则表达式匹配所有可能的日志头格式（使用命名捕获组提高可读性）
    $logHeaderPattern = "^r(?<Revision>\d+) \| (?<Author>[^|]*) \| (?<Date>[^|]*)?(?: \| \d+ lines?)?$"
    
    # 查找包含修订版、作者和日期的行（使用First确保只匹配第一行）
    $infoLine = $lines | Where-Object { $_ -match $logHeaderPattern } | Select-Object -First 1
    
    # 如果没有找到有效信息行，返回空结果
    if (-not $infoLine) {
        Write-Host "⚠️ 修订版 $Rev 没有有效的 log 信息" -ForegroundColor Yellow
        Write-Host "ℹ️ 日志内容: $cleanedLogOutput" -ForegroundColor Gray
        return $null
    }
    
    # 使用命名捕获组提取信息，提高代码可读性
    $parsedRevision = $matches["Revision"]
    $parsedAuthor = $matches["Author"].Trim()
    $parsedDate = $matches["Date"].Trim()
    
    # 设置默认值
    if (-not $parsedAuthor) { $parsedAuthor = "未知" }
    if (-not $parsedDate) { $parsedDate = "未知日期" }
    
    # 提取提交消息
    $infoLineIndex = $lines.IndexOf($infoLine)
    $messageStartIndex = $infoLineIndex + 1
    
    # 跳过分隔线
    if ($messageStartIndex -lt $lines.Count -and $lines[$messageStartIndex] -match "^-{72}$") {
        $messageStartIndex++
    }
    
    # 使用List<T>代替数组，提高大量消息行时的性能
    $messageLines = [System.Collections.Generic.List[string]]@()
    
    # 收集非空消息行
    for ($i = $messageStartIndex; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        if (-not [string]::IsNullOrWhiteSpace($line)) {
            $messageLines.Add($line)
        }
    }
    
    # 合并消息行
    $parsedMessage = ($messageLines -join "`n").Trim()
    
    # 如果消息为空，使用默认值
    if (-not $parsedMessage) {
        $parsedMessage = "无提交信息"
    }
    
    # 返回解析结果
    return [PSCustomObject]@{
        Revision = $parsedRevision
        Author = $parsedAuthor
        Date = $parsedDate
        Message = $parsedMessage
    }
}

function Get-SvnLogsByRevisions {
    <#
    .SYNOPSIS
        根据修订版列表获取SVN提交记录
    
    .DESCRIPTION
        根据用户提供的修订版列表，逐个获取对应的SVN提交记录
        支持无效修订版跳过和按提交时间排序
    
    .RETURN
        符合条件的提交记录数组，按提交时间排序
    #>
    # 将修订版列表转换为数组
    $revisions = $Revisions -split "," | 
                ForEach-Object { $_.Trim() } | 
                Where-Object { $_ -match "^\d+$" }
    
    if ($revisions.Count -eq 0) {
        Write-Host "❌ 未提供有效的修订版号" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "要合并的修订版列表: $($revisions -join ", ")" -ForegroundColor Gray

    try {
        # 使用List<T>代替数组，提高大量数据时的性能
        $mergeList = [System.Collections.Generic.List[PSCustomObject]]@()
        
        # 逐个获取修订版的日志信息
        foreach ($rev in $revisions) {
            # 使用文本格式获取日志
            $svnArgs = @("log", $RepoURL, "-r", $rev, "-v")
            $logResult = Invoke-SvnCommand -WorkingDirectory $WorkPath -Arguments $svnArgs
            
            # 检查返回结果（更简洁的条件判断）
            if (-not ($logResult -is [Hashtable] -and $logResult.Success -and $logResult.Output -is [string])) {
                Write-Host "⚠️ 无法获取修订版 $rev 的信息，跳过该修订版" -ForegroundColor Yellow
                if ($logResult -and $logResult.Output) {
                    Write-Host "详细错误: $($logResult.Output)" -ForegroundColor Gray
                }
                continue
            }
            
            # 解析日志
            $parsedLog = Parse-SvnLog -Rev $rev -LogOutput $logResult.Output
            
            # 如果解析成功，添加到合并列表
            if ($parsedLog) {
                # 直接在创建对象时计算SortableDate
                $mergeList.Add([PSCustomObject]@{
                    Revision = $parsedLog.Revision
                    Author = $parsedLog.Author
                    Date = $parsedLog.Date
                    Message = $parsedLog.Message
                    SortableDate = Convert-SvnDateToSortable -SvnDate $parsedLog.Date
                })
            }
        }
        
        # 按提交时间排序（先提交的先合并）
        return $mergeList | Sort-Object SortableDate
        
    } catch {
        Write-Host "错误：获取SVN日志失败 - $($_.Exception.Message)" -ForegroundColor Red
        # 显示详细错误信息
        Write-Host "详细错误: $($_.Exception.ToString())" -ForegroundColor Gray
        exit 1
    }
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
        测试合并修订版，检测潜在冲突
    
    .DESCRIPTION
        对每个待合并的修订版执行 dry-run 合并，检测是否存在潜在冲突
    
    .PARAMETER MergeList
        待合并的提交记录列表
    
    .RETURN
        可能存在冲突的提交记录列表
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="待合并的提交记录列表")]
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
        将待合并的修订版逐个cherry-pick到本地工作副本，并处理可能的冲突
    
    .PARAMETER MergeList
        待合并的提交记录列表
    
    .RETURN
        合并结果列表，包含每个修订版的合并状态
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="待合并的提交记录列表")]
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

function Show-MergeResults {
    <#
    .SYNOPSIS
        显示合并结果汇总
    
    .DESCRIPTION
        格式化显示每个修订版的合并结果，包括成功和失败的情况
    
    .PARAMETER MergeResults
        合并结果列表
    #>
    param(
        [Parameter(Mandatory=$true, HelpMessage="合并结果列表")]
        [array]$MergeResults
    )
    
    Write-Host "`n合并结果汇总：" -ForegroundColor Cyan
    Write-Host "======================" -ForegroundColor Cyan
    
    foreach ($item in $MergeResults) {
        if ($item.Success) {
            Write-Host "✅ 修订版 $($item.Revision) - 合并成功" -ForegroundColor Green
        } else {
            Write-Host "❌ 修订版 $($item.Revision) - 合并失败" -ForegroundColor Red
            if ($item.HasConflicts) {
                Write-Host "  原因: 存在冲突文件 ($(@($item.ConflictFiles).Count) 个)" -ForegroundColor Yellow
            }
        }
    }
    
    Write-Host "======================" -ForegroundColor Cyan
}

function Main {
    <#
    .SYNOPSIS
        主函数，整合所有合并流程
    
    .DESCRIPTION
        协调所有合并相关函数的调用，实现完整的修订版合并流程
        包括：工作副本检查、修订版获取、过滤、初始化、测试合并和实际合并
    #>
    
    # 显示脚本标题和工作副本信息
    Write-Host "TortoiseSVN 修订版合并脚本" -ForegroundColor Green
    Write-Host "===========================" -ForegroundColor Green
    Write-Host "工作副本路径: $WorkPath" -ForegroundColor Gray
    Write-Host "仓库URL: $RepoURL" -ForegroundColor Gray
    
    # 1. 获取要合并的修订版信息
    $mergeList = Get-SvnLogsByRevisions
    
    if (@($mergeList).Count -eq 0) {
        Write-Host "❌ 没有找到有效的修订版信息，退出脚本" -ForegroundColor Red
        exit 1
    }
    
    # 2. 显示待合并列表
    Show-MergeCandidateList -mergeList $mergeList
    
    # 3. 过滤已合并的修订版
    $filteredMergeList = Filter-AlreadyMergedRevisions -mergeList $mergeList -sourceUrl $RepoURL -targetPath $WorkPath
    
    if (@($filteredMergeList).Count -eq 0) {
        Write-Host "✅ 所有修订版都已合并，无需执行任何操作" -ForegroundColor Green
        exit 0
    }
    
    # 4. 初始化工作副本
    Initialize-WorkingCopy

    # 5. 检查工作副本是否干净
    Check-WorkingCopyBeforeResume
    
    # 6. 测试合并
    $conflictRevisions = Test-RevisionMerge -mergeList $filteredMergeList
    
    if ($conflictRevisions.Count -gt 0) {
        Write-Host "`n⚠️ 测试合并发现以下修订版可能存在冲突:" -ForegroundColor Yellow
        foreach ($rev in $conflictRevisions) {
            Write-Host "  修订版: $($rev.Revision) - $($rev.Message.Substring(0, [Math]::Min(50, $rev.Message.Length)))..." -ForegroundColor Red
        }
        
        # 询问用户是否继续
        $continue = Read-Host "是否继续执行实际合并？(y/N)"
        if (-not ($continue -eq "y" -or $continue -eq "Y")) {
            Write-Host "用户取消合并操作" -ForegroundColor Yellow
            exit 0
        }
    }
    
    # 7. 执行实际合并
    $mergeResults = Invoke-RevisionMerge -mergeList $filteredMergeList
    
    # 8. 显示合并结果
    Show-MergeResults -mergeResults $mergeResults
    
    Write-Host "`n合并脚本执行完成！" -ForegroundColor Green
}

# 调用主函数开始执行
Main