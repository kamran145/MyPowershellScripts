#- PowerShell script that lists all files and directories including hidden files and directories in the current path.
Get-ChildItem -Recurse -Force | select -property name, pspath