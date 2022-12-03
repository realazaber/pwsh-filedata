$filePath = $args[0]


if ( $filePath -ne $null)
{
    Get-FileHash * | Export-Csv -Path "main.csv"; 
    Get-ChildItem * | select Name, CreationTime, LastAccessTime, LastWriteTime | Export-Csv -Append -Path "main.csv" -Force;
    Write-Output "Data saved!";
}
else 
{
    Write-Output "Please add a file path";
}


