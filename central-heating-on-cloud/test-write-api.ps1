param(
    [Parameter(Mandatory)][string]$ApiKey,
    [string]$InvokeUrl = "https://i0faevlunh.execute-api.eu-west-2.amazonaws.com/prod/status"
)

# Raw QUACK wire text (key value\n lines), not JSON — see
# pico-central-heating/QUACK.md and CentralHeatingOnCloud.Lambda/Routes.cs.
$body = @"
uptime 12345
time $(Get-Date -Format "yyyy-MM-ddTHH:mm:ss")
z1 on
z2 off
z3 on
z4 off
z5 off
o1 on
o2 off
o3 off
o4 off
o5 off
o6 off
hw on
boiler on
heating on
version test-write-api.ps1
temperature 21.5
fulfilled-state-id
"@ -replace "`r", ""

Write-Host "POST $InvokeUrl" -ForegroundColor Cyan
Write-Host "---" -ForegroundColor DarkGray
Write-Host $body -ForegroundColor DarkGray
Write-Host "---" -ForegroundColor DarkGray

try {
    $response = Invoke-WebRequest -Uri $InvokeUrl -Method Post `
        -Headers @{ "x-api-key" = $ApiKey } `
        -ContentType "text/plain" `
        -Body $body

    Write-Host "$($response.StatusCode) $($response.StatusDescription)" -ForegroundColor Green
}
catch {
    $statusCode = $_.Exception.Response.StatusCode.value__
    Write-Host "Failed: $statusCode $($_.Exception.Message)" -ForegroundColor Red
    if ($_.ErrorDetails.Message) {
        Write-Host $_.ErrorDetails.Message -ForegroundColor Red
    }
}
