# IPPhone Nummer in der AD vervollständigen

$Users = Get-ADGroupMember IPPhoneTest # auslesen der Benutzer der IPPhone Testgruppe

# allen IPPhonetest Nutzern soll eine Mail Adresse zugewiesen werden
foreach ($U in $Users) {    # Schleife für alle User in Users

# ruft die Daten für den AKtuellen User auf un schreibt in die temporäre Variable
$fullUser = Get-ADUser -Identity $U
 
# erzeugen einer neuen Mail Adresse nach dem Shema: Vorname.Nachname@adatum,com
$IPPhone = $fullUser.GivenName + "." + $fullUser.Surname + "adatum.com"

# ändern der neuen IPPhone Adresse bei dem atkuellen User
Set-ADUser -Identity $fullUser -Replace @{IPPhone="$IPPhone"}
}
