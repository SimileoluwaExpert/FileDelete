# Days to keep logs files.
$LogsRetention = 30
# Location of files to be deleted
$LogPath = ""
# Make the retention times negative.
$LogsRetention = $LogsRetention * -1
# Delete the old Logs files.
$Logs = (Get-ChildItem $LogPath | `
    Where-Object{$_.LastWriteTime -lt (Get-Date).AddDays($LogsRetention)})
$Logs | Remove-Item


