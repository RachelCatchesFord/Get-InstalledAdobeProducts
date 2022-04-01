$InstalledApps = Get-CimInstance -ClassName Win32_Product

$InstalledApps | Where-Object {$_.Vendor -like "*Adobe*"} | Foreach-object{Write-Output $_.Name}