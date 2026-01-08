<#
.SYNOPSIS
    SVN 合并脚本包装器
    同时支持 merge-by-keyword.ps1 和 merge-by-revisions.ps1 脚本的调用

.DESCRIPTION
    该脚本作为 SVN 合并脚本的包装器，用于简化 merge-by-keyword.ps1 和 merge-by-revisions.ps1 的调用过程。
    在此文件中可以预先设置工作副本路径和仓库 URL，其他参数通过命令行传递。
    支持智能模式选择：
    - 如果提供了 Revisions 参数，自动使用按修订版合并模式
    - 如果没有 Revisions 但提供了 Keyword 参数，自动使用按关键字合并模式
    - 如果两者都没有提供，提示用户输入其中一个

.PARAMETER Keyword
    要搜索的提交信息关键字（按关键字合并模式下使用）

.PARAMETER Revisions
    要合并的修订版列表，用逗号分隔（按修订版合并模式下使用）

.PARAMETER Author
    提交作者，默认为 "baozl"（仅按关键字合并模式有效）

.PARAMETER DaysBack
    搜索时间范围（天数），默认为 30 天（仅按关键字合并模式有效）

.PARAMETER SkipRevert
    跳过工作副本的 revert 操作

.EXAMPLE
    # 按关键字合并
    .\merge.ps1 -Keyword "修复 bug"

.EXAMPLE
    # 按修订版合并
    .\merge.ps1 -Revisions "1234,5678,9012"

.EXAMPLE
    # 按关键字合并（自定义参数）
    .\merge.ps1 -Keyword "功能更新" -Author "user" -DaysBack 15 -SkipRevert

.EXAMPLE
    # 按修订版合并（自定义参数）
    .\merge.ps1 -Revisions "1234,5678" -SkipRevert
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory=$false, HelpMessage="请输入要搜索的提交信息关键字")]
    [string]$Keyword,
    
    [Parameter(Mandatory=$false, HelpMessage="请输入要合并的修订版列表，用逗号分隔")]
    [string]$Revisions,
    
    [Parameter(HelpMessage="提交作者（仅按关键字合并模式有效）")]
    [string]$Author = "baozl",
    
    [Parameter(HelpMessage="搜索时间范围（天数）（仅按关键字合并模式有效）")]
    [int]$DaysBack = 30,
    
    [Parameter(HelpMessage="跳过工作副本的 revert 操作")]
    [switch]$SkipRevert
)

# 配置参数 - 可以在这里修改默认值
# 在此处设置你的工作副本路径
[string]$WorkPath = "F:\UnityProject_Mid"

# 设置仓库 URL
[string]$RepoURL = "http://192.168.1.117/svn/Program/UnityProject"

# 验证工作副本路径是否存在
if (-not (Test-Path $WorkPath)) {
    Write-Host "错误：工作副本路径不存在: $WorkPath" -ForegroundColor Red
    Write-Host "请在脚本中修改 `$WorkPath` 变量的值为你的工作副本路径" -ForegroundColor Yellow
    exit 1
}

# 智能模式选择
[string]$mode = $null
if (-not [string]::IsNullOrWhiteSpace($Revisions)) {
    $mode = "Revisions"
} elseif (-not [string]::IsNullOrWhiteSpace($Keyword)) {
    $mode = "Keyword"
} else {
    Write-Host "错误：必须提供关键字或修订版列表" -ForegroundColor Red
    Write-Host "请使用 -Keyword 参数提供搜索关键字，或使用 -Revisions 参数提供修订版列表" -ForegroundColor Yellow
    exit 1
}

# 显示配置信息
Write-Host (("=" * 60)) -ForegroundColor Cyan
Write-Host "SVN 合并脚本 - 包装器" -ForegroundColor Cyan
Write-Host (("=" * 60)) -ForegroundColor Cyan
Write-Host "配置信息:" -ForegroundColor White
Write-Host "合并模式: $mode" -ForegroundColor Yellow
Write-Host "工作副本路径: $WorkPath" -ForegroundColor Yellow
Write-Host "仓库 URL: $RepoURL" -ForegroundColor Yellow

if ($mode -eq "Keyword") {
    Write-Host "搜索关键字: $Keyword" -ForegroundColor Yellow
    if (-not [string]::IsNullOrWhiteSpace($Author)) {
        Write-Host "作者限制: $Author" -ForegroundColor Yellow
    }
    Write-Host "时间范围: 最近 $DaysBack 天" -ForegroundColor Yellow
} else {
    Write-Host "修订版列表: $Revisions" -ForegroundColor Yellow
}

Write-Host "是否跳过 Revert: $SkipRevert" -ForegroundColor Yellow
Write-Host (("=" * 60) + "`n") -ForegroundColor Cyan

# 合并脚本的可能路径列表
[string]$scriptName = if ($mode -eq "Keyword") { "merge-by-keyword.ps1" } else { "merge-by-revisions.ps1" }

[string[]]$possibleScriptPaths = @(
    # 当前目录
    Join-Path $PSScriptRoot $scriptName
    # 上一级目录
    Join-Path (Split-Path $PSScriptRoot -Parent) $scriptName
)

# 查找合并脚本文件
[string]$scriptPath = $null
foreach ($path in $possibleScriptPaths) {
    if (Test-Path $path) {
        $scriptPath = $path
        Write-Host "找到合并脚本文件: $scriptPath" -ForegroundColor Green
        break
    }
}

# 验证合并脚本是否存在
if (-not $scriptPath) {
    Write-Host "错误：找不到合并脚本文件 $scriptName" -ForegroundColor Red
    Write-Host "请确保合并脚本文件在以下位置之一：" -ForegroundColor Yellow
    foreach ($path in $possibleScriptPaths) {
        Write-Host "  $path" -ForegroundColor Gray
    }
    exit 1
}

# 开始执行合并脚本
Write-Host "正在调用合并脚本..." -ForegroundColor Green

try {
    # 准备调用参数 - 使用哈希表传递命名参数，更可靠
    $mergeParams = @{
        WorkPath = $WorkPath
        RepoURL = $RepoURL
    }
    
    # 根据模式添加特定参数
    if ($mode -eq "Keyword") {
        $mergeParams["Keyword"] = $Keyword
        $mergeParams["Author"] = $Author
    } else {
        $mergeParams["Revisions"] = $Revisions
    }
    
    $mergeParams["DaysBack"] = $DaysBack
    
    # 如果指定了 SkipRevert，则添加该参数
    if ($SkipRevert) {
        $mergeParams["SkipRevert"] = $true
    }
    
    # 调用合并脚本
    & $scriptPath @mergeParams
    
    Write-Host "`n调用完成！" -ForegroundColor Green
}
catch {
    Write-Host "脚本执行出错: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}