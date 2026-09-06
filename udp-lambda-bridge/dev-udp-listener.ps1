# Minimal stand-in for the real udp-lambda-bridge-pi service - just
# receives and prints, with a local wall-clock timestamp, nothing else.
# No reply, no AWS calls, no processing that could itself introduce delay.
#
# Useful for isolating where a delay actually lives: run this on a machine
# on the same network as the Pico and compare each line's timestamp against
# the packet's own "time" field. If a gap shows up here too - with nothing
# in the loop but a bare receive - that's a transit/AP-level delay, not
# anything in the real bridge's own processing (status POST, mint, etc.).
param(
    [int]$Port = 12345
)

$udpClient = New-Object System.Net.Sockets.UdpClient($Port)
$endpoint = New-Object System.Net.IPEndPoint([System.Net.IPAddress]::Any, 0)

Write-Host "Listening for UDP on port $Port (Ctrl+C to stop)..." -ForegroundColor Cyan

try {
    while ($true) {
        $receivedBytes = $udpClient.Receive([ref]$endpoint)
        $timestamp = Get-Date -Format "yyyy-MM-ddTHH:mm:ss.fffZ"
        $text = [System.Text.Encoding]::ASCII.GetString($receivedBytes)
        Write-Host "[$timestamp] from $($endpoint.Address):$($endpoint.Port)" -ForegroundColor Green
        Write-Host $text
        Write-Host "---"
    }
}
finally {
    $udpClient.Close()
}
