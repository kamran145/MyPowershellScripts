#- PowerShell script that generates a random 8-digit pin number.
( (1..8) | ForEach-Object { Get-Random -Minimum 0 -Maximum 9 } ) -join ''