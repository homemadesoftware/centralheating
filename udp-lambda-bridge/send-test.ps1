param(
    [string]$TargetIp = "192.168.1.125",
    [int]$Port = 12345,
    [string]$Message = "sheep"
)

$client = New-Object System.Net.Sockets.UdpClient
$client.Client.ReceiveTimeout = 3000

$bytes = [Text.Encoding]::UTF8.GetBytes($Message)
$sentTo = New-Object Net.IPEndPoint([Net.IPAddress]::Parse($TargetIp), $Port)

Write-Host "Sending '$Message' to $TargetIp`:$Port..."
$client.Send($bytes, $bytes.Length, $sentTo) | Out-Null

try {
    $remoteEp = New-Object Net.IPEndPoint([Net.IPAddress]::Any, 0)
    $reply = $client.Receive([ref]$remoteEp)
    $text = [Text.Encoding]::UTF8.GetString($reply)
    Write-Host "Reply from $($remoteEp.Address):$($remoteEp.Port) -> $text" -ForegroundColor Green
}
catch [System.Net.Sockets.SocketException] {
    Write-Host "No reply received within timeout." -ForegroundColor Red
}
finally {
    $client.Close()
}
