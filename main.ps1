$filePath = $args[0]


if ( $filePath -ne $null)
{
    Get-FileHash * | Export-Csv -Path "hashs.csv"; 
    Get-ChildItem * | select Name, CreationTime, LastAccessTime, LastWriteTime | Export-Csv -Path "main.csv";
    Write-Output "Data saved!";
}
else 
{
    Write-Output "Please add a file path";
}


