# Filename : Clean_AlpLogs.ps1
# Purpose : Deletes all files under C:\Logs and 


# Days to keep c:\logs files.
$LogsRetention = 30
# Location of files to be deleted
$LogPath = "C:\Users\Simileoluwa Babalola\source\repos\Test_Unit_App\.vscode"

# Make the retention times negative.
$LogsRetention = $LogsRetention * -1

# Delete the old Logs files.
$Logs = (Get-ChildItem $LogPath | `
    Where-Object{$_.LastWriteTime -lt (Get-Date).AddDays($LogsRetention)})
$Logs | Remove-Item

