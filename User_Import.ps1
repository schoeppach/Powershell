## User Import

    $users=import-csv -LiteralPath "c:\user.csv" -Delimiter ";"
    foreach($user in $users) {$password=$user.Kennwort | ConvertTo-SecureString -AsPlainText -Force
    $ou="OU=" +$user.Abteilung+ ",OU=Mitarbeiter,DC=schoeppach,DC=intern"
    $profil="\\DC1\Profil\" +$user.Anmeldename
    $heimat="\\DC1\Home\" +$user.Anmeldename
    $abteilung=$user.Abteilung+"_Gruppe"

    New-ADUser -GivenName $user.Vorname -Surname $user.Nachname -SamAccountName $user.Anmeldename -Name $user.Anmeldename -AccountPassword $password -Path $ou -ChangePasswordAtLogOn $false -Enabled $true -ProfilePath $profil -HomeDrive "e" -HomeDirectory $heimat
    Add-ADGroupMember -Identity $abteilung -Members $user.Anmeldename
    Add-ADGroupMember -Identity "Mitarbeiter" -Members $user.Anmeldename
    }
