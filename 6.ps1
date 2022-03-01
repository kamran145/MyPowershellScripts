#- Create a function name Get-UpHistory that saves the uptime and the command history information into a text file called 'uphistory.txt'.

function Get-UpHistory{

$uptime = (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
[string]::Format(“Uptime = {0}”,$uptime)

Get-History | Out-File -FilePath .\uphistory.txt

}

Get-UpHistory;