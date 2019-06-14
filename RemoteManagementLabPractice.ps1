#Create new PSSession and Enter the session
New-PSSession -ComputerName "client02" -Credential $(Get-Credential)
Enter-PSSession -ComputerName "client02" -Credential $(Get-Credential)
#Exit and remove PSSession
Exit-PSSession -ComputerName "client02" 
Remove-PSSession -ComputerName "client02"
#Second way to remote management 
Invoke-Command -ComputerName "client02" -ScriptBlock (get-hotfix) -Credential $(Get-Credential)
#Multi-threading (-asjob)
Invoke-Command -ComputerName "client02" -ScriptBlock (get-hotfix) -Credential $(Get-Credential) -asjob