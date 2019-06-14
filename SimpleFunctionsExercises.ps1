#PowerShell dot sourcing allows you to load all functions in a script that are cmdletbinding to the global cache

#Exercise 6.5.1 Simple Functions
#Question 1:

function Get-StartDate {
    [CmdletBinding()]
    param(
        [Parameter(HelpMessage = "Integer month for patching" )]
        [Int32]$Month 
    )
    Write-Verbose -Message "Hello World"
    $CurrentMonth = (Get-Date -Month $Month).Month
    switch ($(Get-Date -Month $CurrentMonth -Day 1).DayOfWeek)
        {Sunday {$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(9)};
        Monday {$SecondTuesday = (Get-Date -Month $CurrentMonth  -Day 1).AddDays(8)};
        Tuesday {$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(7)};
        Wednesday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(13)};
        Thursday{$SecondTuesday =  (Get-Date -Month $CurrentMonth -Day 1).AddDays(12)};
        Friday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(11)};
        Saturday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(10)}}
    return $SecondTuesday
   }
   $MyDate = Get-StartDate -Month 6 -Verbose
   $MyDate

   #Example 2:

   function Get-StartDate {
    [CmdletBinding()]
    param(
        [Parameter(HelpMessage = "Integer month for patching" )]
        [Int32]$Month 
    )
    Write-Verbose -Message "Hello World"
    $CurrentMonth = (Get-Date -Month $Month).Month
    switch ($(Get-Date -Month $CurrentMonth -Day 1).DayOfWeek)
        {Sunday {$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(9+1)};
        Monday {$SecondWednesday = (Get-Date -Month $CurrentMonth  -Day 1).AddDays(8+1)};
        Tuesday {$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(7+1)};
        Wednesday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(13+1)};
        Thursday{$SecondWednesday =  (Get-Date -Month $CurrentMonth -Day 1).AddDays(12+1)};
        Friday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(11+1)};
        Saturday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(10+1)}}
    return $SecondWednesday
   }
   $MyDate = Get-StartDate -Month 6 -Verbose
   $MyDate

#Exercise 3




