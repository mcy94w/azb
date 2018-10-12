Param(
  [string]$server="https://www.google.com"
)

$resp = Invoke-WebRequest -UseBasicParsing -Uri $server

if ($resp.statusCode -eq 200) {
    Write-Host "200"
    exit 0
}

exit 666