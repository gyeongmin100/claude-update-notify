[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$current = (claude --version 2>$null) -replace '.*?(\d+\.\d+\.\d+).*', '$1'
$latest = (npm show @anthropic-ai/claude-code version 2>$null).Trim()
if ($current -and $latest -and ($current -ne $latest)) {
    $esc = [char]27
    $yellow = "$esc[1m$esc[33m"
    $cyan = "$esc[1m$esc[36m"
    $reset = "$esc[0m"
    $msg = "Claude Code 업데이트 가능: ${yellow}$current -> $latest${reset}`n업데이트하려면 터미널에서 '${cyan}claude update${reset}' 를 실행하세요."
    @{ systemMessage = $msg } | ConvertTo-Json -Compress
}
