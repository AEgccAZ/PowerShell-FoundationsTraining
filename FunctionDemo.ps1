<# Functions #>
#Example:
function Write-Something {
    Write-Verbose -Message "Something" -Verbose
    
}
Write-Something

#Example 2: 
function Write-Something {
    param(
        [Parameter(HelpMessage = "This is what we write to the screen" , Mandatory = $true)]
        [string]$Message
    )
    Write-Verbose -Message "$($Message)" -Verbose
    
}
Write-Something -Message "Hello World"

#An example of advanced Function
funtion get-hello{
    [cmdletbinding()]
    param()
}
#C sharp cmdlet function is the last type, not showcased in class


#Example 3: 
function Write-Something {
    param(
        [Parameter(HelpMessage = "This is what we write to the screen" , Mandatory = $true)]
        [string]$Message, 
        [Parameter(HelpMessage = "Repeat this a set number of times")]
        [Int32]$RepeatCount
    )
    for($i=1,$i -le $RepeatCount;$i++){
        Write-Verbose -Message "$($Message)" 
    }
}
Write-Something -Message "Hello World" -RepeatCount 5