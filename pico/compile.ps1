Write-Host "Building compiler-image..." -ForegroundColor Cyan
docker build . -f Dockerfile -t compiler-image

Write-Host "Removing old container if it exists..." -ForegroundColor Cyan
docker rm -f compiler 2>$null

# Path to the UF2 file
$uf2 = Join-Path $PWD "build\my_project.uf2"
if (Test-Path $uf2) {
    Write-Host "Removing old UF2..." -ForegroundColor Yellow
    Remove-Item $uf2
}

Write-Host "Running build inside Docker..." -ForegroundColor Cyan
docker run `
    --name compiler `
    -v ${PWD}:/usr/src/project `
    compiler-image `
    bash -c "make -C build -j4"

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
else
{
    Write-Host "E: drive not detected. Skipping copy." -ForegroundColor Yellow
}