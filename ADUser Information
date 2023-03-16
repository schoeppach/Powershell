## Zeitstempel in Variabler logFile:

    $logFile = [string]"log" + "-" + $today.Year + "-" + $today.Month + "-" + $today.Day + "-" + $today.Hour + "-" + $today.Minute + ".txt"


## letztes Login der Ad User(30Tage):

    $cutOffDate = $today.AddDays(-30)
    Get-ADUser -Properties LastLogonDate -Filter {LastLogonDate -gt $cutOffDate}

## AdUser aus Marketing finden
    
    $mktgUsers = Get-ADUser -Filter {Department -eq "Marketing"} -Properties Department

    Get-ADUser -Filter {GivenName - like "Ann**] | where {Get-ADUser -Filter{Department -eq "Marketing"'}}
