# $filePath = $args[0]

# Get-FileHash $filePath *

Get-FileHash * | Export-Csv -Path "hashs.csv"; Get-ChildItem * | select Name, CreationTime, LastAccessTime, LastWriteTime | Export-Csv -Path "main.csv"
