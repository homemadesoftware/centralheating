param(
    [Parameter(Mandatory)][string]$ApiKey,
    [string]$InvokeUrl = "https://953h0xkjo3.execute-api.eu-west-2.amazonaws.com/prod/desired-state-url",
    [string]$Bucket = "central-heating-on-cloud-desired-state",
    [string]$Key = "current.txt",
    [string]$Content = "desired-state none`ndesired-state-id 1"
)

# 1. Write the desired-state object directly to S3, using the caller's own
# AWS credentials — stands in for the future write path (an Android app,
# not built yet). One known key, always overwritten in place, plain text.
$tempFile = New-TemporaryFile
try {
    Set-Content -Path $tempFile -Value $Content -NoNewline
    Write-Host "Writing s3://$Bucket/$Key ..." -ForegroundColor Cyan
    aws s3api put-object --bucket $Bucket --key $Key --body $tempFile --content-type "text/plain" | Out-Null
}
finally {
    Remove-Item $tempFile -ErrorAction SilentlyContinue
}

# 2. Ask the Lambda for a presigned URL (plain text response, just the URL).
Write-Host "GET $InvokeUrl ..." -ForegroundColor Cyan
$presignedUrl = Invoke-RestMethod -Uri $InvokeUrl -Headers @{ "x-api-key" = $ApiKey }
Write-Host "Presigned URL: $presignedUrl" -ForegroundColor DarkGray

# 3. Fetch the object via the presigned URL directly — no auth, no API key,
# no Lambda involved. A 404 here is also a valid state (no desired state
# set) but since we just wrote one above, expect the content back.
Write-Host "Fetching presigned URL ..." -ForegroundColor Cyan
try {
    $response = Invoke-WebRequest -Uri $presignedUrl
    Write-Host "$($response.StatusCode) $($response.StatusDescription)" -ForegroundColor Green
    Write-Host "---" -ForegroundColor DarkGray
    Write-Host $response.Content
    Write-Host "---" -ForegroundColor DarkGray
}
catch {
    $statusCode = $_.Exception.Response.StatusCode.value__
    Write-Host "Failed: $statusCode" -ForegroundColor Red
}
