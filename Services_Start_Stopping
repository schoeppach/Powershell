Create a script that starts stopped services:

# Dienste

    Get-Service "Print Spooler" | Select -ExpandProperty Name | Out-File services.txt -Append
    Get-Service "Windows Time" | Select -ExpandProperty Name | Out-File services.txt -Append

------------------------------

# Script zum erstellen von Diensten aus einer .txt

    $Services = Get-Content -path e:\mod07\labfiles\services.txt

# Kontrolle ob der Dienst schon gestartet wurde
    foreach ($S in $Services){
    $Status = (Get-Service $S).Status # erstellen der Statusvariable für aktuelle $S

    if($Status -ne "Running"){      # wenn der Dienst NICHT in Status Running ist mache:


    Start-Service $S
    Write-Host "Dienst $S wird gestartet"
    }else{
         Write-Host "Dienst $S ist bereits gestartet"
        }
    }
