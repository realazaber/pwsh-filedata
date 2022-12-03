$filePath = $args[0]

Get-FileHash $filePath *

Get-FileHash *; Get-ChildItem * | select Name, CreationTime, LastAccessTime, LastWriteTime
