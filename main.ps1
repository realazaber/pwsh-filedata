$filePath = $args[0]

Get-FileHash $filePath *

Get-ChildItem * | select Name, CreationTime, LastAccessTime, LastWriteTime
