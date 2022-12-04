$filePath = $args[0]

if ( $filePath -ne $null)
{
    if ( $filePath -eq "-h" )
    {
        Write-Output "HOW TO USE";
        Write-Output "Run .\main.ps1 and add a valid file path.";
    }
    else 
    {
        Get-ChildItem $filePath * -File | select Name, CreationTime, LastAccessTime, LastWriteTime, @{Label='HashValue'; 
        Expression={(Get-FileHash $_.FullName).Hash}}| Export-Csv -Path "main.csv";
        Write-Output "Data saved!";
    }
}

else 
{
    Write-Output "Please add a file path.";
    Write-Output "Run ./main.ps1 -h to see guide menu.";
}