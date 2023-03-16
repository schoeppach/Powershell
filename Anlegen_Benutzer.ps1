# Anlegen von Benutzer

$Users = Import-Csv -Path E:\Mod07\Labfiles\users.csv # Users Variable

foreach ($U in $Users){

$Path = "OU=" + $U.Department + ",DC=Adatum,DC=com"

$UPN = $U.UserID + "@Adatum.com"    # UPN UserPrincipalName

$DN = $U.First + " " + $U.Last      # DN Anzeigename

New-ADUser -Name $DN `
           -Department $U.Department `
           -DisplayName $DN `
           -GivenName $U.First `
           -SurName $U.Last `
           -SamAccountName $U.UserID `
           -UserPrincipalName $UPN `
           -Path $Path
}
