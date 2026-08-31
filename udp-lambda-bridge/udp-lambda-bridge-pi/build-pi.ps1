param(
    [string]$RemoteHost = "toadmail-hub",
    [string]$RemoteUser = "pi",
    [string]$RemotePassword = "pi",
    [string]$RemoteDir = "/home/pi/udp-lambda-bridge-pi"
)

# Plain SSH/SCP build (via the Posh-SSH module) — replaces
# udp-lambda-bridge-pi.vcxproj and VS's Linux remote build, which turned
# out too unreliable to keep debugging blind (flaky remote connection, an
# opaque generated link command line, no usable verbose output even once
# enabled). Every command here is visible and runs exactly as written — no
# IDE-generated command line to reverse-engineer.
#
# Password auth, defaulting to the well-known stock Raspberry Pi password —
# deliberately not hardened for now (toadmail-hub is a home-LAN-only
# device); override with -RemotePassword if that's ever changed.

if (-not (Get-Module -ListAvailable -Name Posh-SSH)) {
    Install-Module -Name Posh-SSH -Scope CurrentUser -Force
}
Import-Module Posh-SSH

$scriptDir = $PSScriptRoot
$sharedDir = Join-Path $scriptDir "..\udp-lambda-bridge-shared"

$sourceFiles = @(
    (Join-Path $sharedDir "main.c")
    (Join-Path $sharedDir "udp_io.c")
    (Join-Path $sharedDir "udp_io.h")
    (Join-Path $scriptDir "CommandCentreClient.c")
    (Join-Path $scriptDir "CommandCentreClient.h")
    (Join-Path $scriptDir "CMakeLists.txt")
)

$securePassword = ConvertTo-SecureString $RemotePassword -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($RemoteUser, $securePassword)

Write-Host "Connecting to $RemoteHost ..." -ForegroundColor Cyan
$session = New-SSHSession -ComputerName $RemoteHost -Credential $credential -AcceptKey -ErrorAction Stop

try {
    Write-Host "Creating $RemoteDir ..." -ForegroundColor Cyan
    Invoke-SSHCommand -SSHSession $session -Command "mkdir -p $RemoteDir" | Out-Null

    Write-Host "Copying sources ..." -ForegroundColor Cyan
    foreach ($file in $sourceFiles) {
        Set-SCPItem -ComputerName $RemoteHost -Credential $credential -Path $file -Destination $RemoteDir -AcceptKey | Out-Null
    }

    Write-Host "Configuring and building ..." -ForegroundColor Cyan
    $result = Invoke-SSHCommand -SSHSession $session -Command "cd $RemoteDir && cmake -S . -B build && cmake --build build"
    Write-Host $result.Output
    if ($result.Error) {
        Write-Host $result.Error -ForegroundColor Yellow
    }

    if ($result.ExitStatus -ne 0) {
        Write-Host "Build failed" -ForegroundColor Red
        exit 1
    }

    Write-Host "Build succeeded: $RemoteDir/build/udp-lambda-bridge-pi" -ForegroundColor Green
}
finally {
    Remove-SSHSession -SSHSession $session | Out-Null
}
