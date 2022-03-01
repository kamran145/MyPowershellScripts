#- PowerShell cmdlet that enables you to export the output of a PowerShell command into a .csv file.

get-process | Export-Csv -Path .\<file_name>.csv