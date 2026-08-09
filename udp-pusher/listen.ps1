$port    = 12345
$animals = @("sheep", "pig", "cow")

# Receive on all interfaces
$recvClient = New-Object System.Net.Sockets.UdpClient($port)
$recvClient.EnableBroadcast = $true

$sendClient = $null
$nextSend   = [DateTime]::Now.AddSeconds(10)
$task       = $recvClient.ReceiveAsync()

function Get-LocalIpFor($targetIp) {
    $s = New-Object System.Net.Sockets.Socket(
        [Net.Sockets.AddressFamily]::InterNetwork,
        [Net.Sockets.SocketType]::Dgram,
        [Net.Sockets.ProtocolType]::Udp)
    $s.Connect($targetIp, 80)
    $ip = ($s.LocalEndPoint -as [Net.IPEndPoint]).Address
    $s.Close()
    return $ip
}

Write-Host "Listening on UDP :$port — waiting for Pico to learn its subnet..."

try {
    while ($true) {
        if ($task.IsCompleted) {
            $result  = $task.Result
            $message = [Text.Encoding]::UTF8.GetString($result.Buffer)
            $from    = $result.RemoteEndPoint.Address
            $ts      = Get-Date -Format "HH:mm:ss"
            Write-Host "[$ts] $from  $message"

            # First Pico packet tells us which interface to send from
            if (-not $sendClient) {
                $localIp  = Get-LocalIpFor $from.ToString()
                $localEp  = New-Object Net.IPEndPoint($localIp, 0)
                $sendClient = New-Object Net.Sockets.UdpClient($localEp)
                $sendClient.EnableBroadcast = $true
                Write-Host "Sending from $localIp" -ForegroundColor Green
            }

            $task = $recvClient.ReceiveAsync()
        }

        if ($sendClient -and [DateTime]::Now -ge $nextSend) {
            $animal = $animals | Get-Random
            $bytes  = [Text.Encoding]::UTF8.GetBytes($animal)
            $broadcastEp = New-Object Net.IPEndPoint([Net.IPAddress]::Broadcast, $port)
            $sendClient.Send($bytes, $bytes.Length, $broadcastEp) | Out-Null
            $ts = Get-Date -Format "HH:mm:ss"
            Write-Host "[$ts] --> $animal" -ForegroundColor Cyan
            $nextSend = [DateTime]::Now.AddSeconds(10)
        }

        Start-Sleep -Milliseconds 100
    }
} finally {
    $recvClient.Close()
    if ($sendClient) { $sendClient.Close() }
}
