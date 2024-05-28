
[int]$eingabe = $null
$name = $null
$vorname = $null
$strasse = $null
$nummer = $null
$plz = $null
$ort = $null


try {
$eingabe = Read-Host "bitte geben sie die Wartezeit ein: ";
start-sleep $eingabe;
 Start-Process notepad.exe;
}
catch {
    Write-Host -ForegroundColor Red "Bitte ganze Zahl eigeben";
}

try{
    Write-Host "Bitte geben Sie ihre Kontaktdaten an."
    $name = Read-Host Nachname 
    $vorname = Read-Host Vorname
    $strasse = Read-Host Strasse
    $nummer = Read-Host Nummer
    $plz = Read-Host PLZ
    $ort = Read-Host Ort
}
catch{
    Write-Host -ForegroundColor Red "ERROR";
}

Write-Host "Kontaktdaten"
"{0,-10} {1,-15} {2,-10} {3}" -f "Vorname:",  $vorName, "Nachname:", $name
"{0,-10} {1,-15} {2,-10} {3}" -f "Strasse:", $strasse, "nummer:", $nummer
"{0,-10} {1,-15} {2,-10} {3}" -f "PLZ:", $plz, "Ort:", $ort