# Path to the UF2 file we are trying to build
$uf2 = Join-Path $PWD "build-outputs\my_project.uf2"
if (Test-Path $uf2) {
    Write-Host "Removing old UF2..." -ForegroundColor Yellow
    Remove-Item $uf2
}

# Run the container once again. It is already attached to our source and is warm
docker start -a pico-compiler
$rc = $LASTEXITCODE
Write-Host "Exit code was: $rc"


if (Test-Path $uf2)
{
    Write-Host "Build succeeded. UF2 file created:" -ForegroundColor Green
    Write-Host "  $uf2"
}
else
{
    Write-Host "Build failed. No UF2 file was created." -ForegroundColor Red
    exit 1
}

# Copy to E: if available
if (Test-Path "E:\")
{
    $picoPath = "E:\INFO_UF2.TXT"

    if (Test-Path $picoPath) 
    {
        $content = Get-Content -Path $picoPath -Raw
    } 
    else 
    {
        $content = ""
    }
    if ($content.StartsWith("UF2 Bootloader v3.0"))
    {
        Write-Host "E: drive detected. Copying UF2 file..." -ForegroundColor Cyan

        try
        {
            Copy-Item -Path $uf2 -Destination "E:\" -Force
            Write-Host "Copied to E:\ successfully." -ForegroundColor Green
        }
        catch
        {
            Write-Host "Failed to copy to E:\" -ForegroundColor Red
            Write-Host $_
        }
    }
}
else
{
    Write-Host "E: drive not detected. Skipping copy." -ForegroundColor Yellow
}