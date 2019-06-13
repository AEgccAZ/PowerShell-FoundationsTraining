#Exercise 4.3.6

<#
Use Try and Catch
Evaluate if today is Christmas
If not catch and write verbose why
#>

#Question 1:

$Today = get-date
$Christmas= "December 25, 2019"
try {
    Write-Verbose -message "We are now checking to see if today is Christmas" -verbose
    if($Today -eq $Christmas){Write-Output -InputObject "It's Christmas"}
    Write-Error -Message "Today is not Christmas" -ErrorAction Stop
}
catch{
    if($Christmas -ne $Today){Write-Output -InputObject "It's not Christmas.  It is $($Today)"}
}

#Question 2:

<#
Use try and catch
Use Test-NetConnection cmdlet
try to connect to port 3389
on client01
#>

try{
    Write-Verbose -message "We are now checking to see if we can connect to port 3389" -verbose
    $results = Test-NetConnection -ComputerName "CLient01" -Port "3389"
    if($results.TcpTestSucceeded -eq $false){
        Write-Error -Message "We dun messed up" -ErrorAction Stop
    }
    
}
catch{
    Write-Verbose -message "We could not connect to Client01" -Verbose
}

#Question 3:
<#
Use try and catch
try to ping client01
#>

try{
    Write-Verbose -Message "We are now checking to see if we can ping Client01" -Verbose
    $pingtest = Test-Connection -ComputerName Client01 -BufferSize 8 -Count 1 -quiet
    if($pingtest -eq $false){
        Write-Error -Message "Ping Failed for Client01" -ErrorAction Stop
    }
}
catch{
    Write-Verbose -message "We could not ping to Client01" -Verbose
}

