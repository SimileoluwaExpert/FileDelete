# Filename : CleanLogs.ps1
# Purpose : Deletes all log files older than 30 days


# Days to keep logs files.
$LogsRetention = 30
# Location of files to be deleted
$LogPath = "C:\Users\Simileoluwa Babalola\source\repos\Test_Unit_App\.vscode"

# Make the retention times negative.
$LogsRetention = $LogsRetention * -1

# Delete the old Logs files.
$Logs = (Get-ChildItem $LogPath | `
    Where-Object{$_.LastWriteTime -lt (Get-Date).AddDays($LogsRetention)})
$Logs | Remove-Item
# Write Message to Console
 Write-Host "Files Deleted"

