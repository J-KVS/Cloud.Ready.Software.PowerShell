. (Join-path $PSScriptRoot '_Settings.ps1')

$ToBranch = 'master'

foreach ($Target in $targetRepos) {
    write-host $Target -ForegroundColor Green
    Set-Location $Target
    & git checkout -q "$ToBranch"
}