$port = 12345

# Receive on all interfaces
$recvClient = New-Object System.Net.Sockets.UdpClient($port)
$recvClient.EnableBroadcast = $true

$task = $recvClient.ReceiveAsync()

Write-Host "Listening on UDP :$port"

try {
    while ($true) {
        if ($task.IsCompleted) {
            $result  = $task.Result
            $message = [Text.Encoding]::UTF8.GetString($result.Buffer)
            $from    = $result.RemoteEndPoint.Address
            $ts      = Get-Date -Format "HH:mm:ss"
            Write-Host "[$ts] $from  $message"

            $task = $recvClient.ReceiveAsync()
        }

        Start-Sleep -Milliseconds 100
    }
} finally {
    $recvClient.Close()
}
