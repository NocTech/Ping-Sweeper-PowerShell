# Define the IP range
$ipRange = "192.168.0."

# Define the range of IP addresses to check
$startIp = 1
$endIp = 254

# Define colors
$colorOffline = "Red"
$colorOnline = "Green"

# Loop through the IP range
for ($ip = $startIp; $ip -le $endIp; $ip++) {
    # Construct the IP address
    $ipAddress = $ipRange + $ip

    # Ping the IP address and check the response
    $pingResult = Test-Connection $ipAddress -Count 1 -Quiet

    # Check if the ping was successful
    if ($pingResult) {
        # Print the online computer's IP address and hostname in green color
        Write-Host "Online: $ipAddress" -ForegroundColor $colorOnline
    } else {
        # Print the offline computer's IP address in red color
        Write-Host "Offline: $ipAddress" -ForegroundColor $colorOffline
    }
}