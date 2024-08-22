# Measure the time taken for the first request
$time1 = Measure-Command {
    $response1 = Invoke-WebRequest -Uri "https://2sxc-dnn.dnndev.me/Restart"
}

# Output the results for the first request
Write-Host "Restart request took: $($time1.TotalSeconds) seconds"
Write-Host "Restart request HTTP Status Code: $($response1.StatusCode)"

# Measure the time taken for the second request
$time2 = Measure-Command {
    $response2 = Invoke-WebRequest -Uri "https://2sxc-dnn.dnndev.me/keepalive.aspx"
}

# Output the results for the second request
Write-Host "Keep-a-live request took: $($time2.TotalSeconds) seconds"
Write-Host "Keep-a-live request HTTP Status Code: $($response2.StatusCode)"
