## DOMAINCONTROLLER:

### ip vergeben Name ändern

    New-NetIPAddress 172.16.0.10 -PrefixLength 16 -InterfaceAlias Ethernet
    
    Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 127.0.0.1
    
    Rename-Computer DC1 -Force -Restart

### Features installieren

    Install-WindowsFeature AD-Domain-Services,DNS

### Features vergeben

    Install-ADDSForest -DomainName schoeppach.de -SafeModeAdministratorPassword ( ConvertTo-SecureString -AsPlainText -Force 'Pa$$w0rd' ) -Force

----------------------------------------

## CLIENT:

### CL1 konfigurieren

    New-NetIPAddress 172.16.0.100 -PrefixLength 16 -InterfaceAlias Ethernet
    
    Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 172.16.0.10
    
    Rename-Computer CL1 -Force -Restart

### zur Domaine hinzufügen

    Add-Computer -DomainName schoeppach.de -Restart

