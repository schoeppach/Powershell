# ALLGEMEINES ##


### Windows Installation überprüfen
	sfc /scannow


## Hard Drive Speed:

### READ a Harddrive in Powershell run as Administrator
        
      winsat disk -seq -read -drive "x"

### Write a Harddrive in Powershell run as Administrator
  
     winsat disk -seq -write -drive "x"


## Kontextmenü Windows 11 in Windows 10 Layout:

    1. Eingabeaufforderung cmd (Administrator) starten
  
    2. Diesen Befehl hineinkopieren und Enter drücken

        reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

    3. Windows-Taste + X und den Task-Manager aufrufen und die explorer.exe neu starten. Danach ist das alte Kontextmenü wieder vorhanden


## USB schreibschutz aufheben formatieren

### [Windows] + [R]
	diskpart

### laufwerke anzeigen
	list disk

### laufwerk auswaehlen
	select disk X

### schreibschutz entfernen
	attributes disk clear readonly
	
### laufwerk bereinigen
	clean
	
### formatieren partitionieren
	create partition primary
	select partition 1
	format fs=FAT32 quick
	active


