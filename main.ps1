$filePath = $args[0]


if ( $filePath -ne $null)
{
    Get-ChildItem * -File | select Name, CreationTime, LastAccessTime, LastWriteTime, @{Label='HashValue';Expression={(Get-FileHash $_).Hash}}| Export-Csv -Path "main.csv"
    Write-Output "Data saved!";
}
else 
{
    Write-Output "Please add a file path";
}



