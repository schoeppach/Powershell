## Install Windows Server:

### Install-WindowsFeature Web-Server

### New-Item C:\inetpub\wwwroot\London -Type directory

### New-IISSite London -PhysicalPath C:\inetpub\wwwroot\london -BindingInformation "172.16.0.15:8080:"
