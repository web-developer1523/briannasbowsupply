# Local Shopify CLI wrapper — use: .\shopify.ps1 theme push --theme "working on printers choice"
$env:Path = "$env:APPDATA\npm;C:\nvm4w\nodejs;" + $env:Path
if (Get-Command nvm -ErrorAction SilentlyContinue) { nvm use 22.15.0 2>$null | Out-Null }
& "$env:APPDATA\npm\shopify.cmd" @args
exit $LASTEXITCODE
