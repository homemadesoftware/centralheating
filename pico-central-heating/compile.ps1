$containerName = "central-heating-pico"
$uf2 = Join-Path $PWD "build-outputs\my_project.uf2"

if (Test-Path $uf2) {
    Write-Host "Removing old UF2..." -ForegroundColor Yellow
    Remove-Item $uf2
}

# Create the container if it doesn't exist yet, otherwise just restart it
$existing = docker ps -a --filter "name=^/${containerName}$" --format "{{.Names}}"
if ($existing -ne $containerName) {
    Write-Host "Creating container '$containerName'..." -ForegroundColor Cyan
    docker run `
        --name $containerName `
        -v ${PWD}:/usr/src/project `
        -v ${PWD}/../Common:/usr/src/Common `
        -v /usr/src/project/build `
        pico-compiler-image `
        /bin/bash /usr/src/project/in-docker-compiler.sh
} else {
    docker start -a $containerName
}

$rc = $LASTEXITCODE
Write-Host "Exit code was: $rc"

if (Test-Path $uf2) {
    Write-Host "Build succeeded. UF2 file created:" -ForegroundColor Green
    Write-Host "  $uf2"
} else {
    Write-Host "Build failed. No UF2 file was created." -ForegroundColor Red
    exit 1
}

# Copy to E: if available
if (Test-Path "E:\") {
    $picoPath = "E:\INFO_UF2.TXT"
    $content = if (Test-Path $picoPath) { Get-Content -Path $picoPath -Raw } else { "" }
    if ($content.StartsWith("UF2 Bootloader v3.0")) {
        Write-Host "E: drive detected. Copying UF2 file..." -ForegroundColor Cyan
        try {
            Copy-Item -Path $uf2 -Destination "E:\" -Force
            Write-Host "Copied to E:\ successfully." -ForegroundColor Green
        } catch {
            Write-Host "Failed to copy to E:\" -ForegroundColor Red
            Write-Host $_
        }
    }
} else {
    Write-Host "E: drive not detected. Skipping copy." -ForegroundColor Yellow
}