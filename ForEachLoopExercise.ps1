$daysindecember = @(1..31)
foreach($day in $daysindecember){
    if($day -eq "25"){Write-Host "It's Christmas"}
}

$files = Get-ChildItem -Path C:\Resources
foreach($file in $files){
    Write-Host $file.FullName  
}


$files = Get-ChildItem -Path C:\Resources
$count = 0 
foreach($file in $files){
    $file.FullName
    $count++
    
}
$count

