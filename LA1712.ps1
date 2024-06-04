<# Scriptname: LA_122_1712-ReadWrite
Author: Huber Fynn
Date: 02.06.2024
Version: 1.0
Description: Dateien lesen und schreiben mithilfe eines Skripts
#>

# VAriablen: 
$pfad = ".\Downloads\Modul122\"
$datei1 = "ReadWrite.txt"
$datei2 = "ReadWrite.part.txt"
$dateiASCII = "ReadWriteASCII.txt"
$dateiANSI = "ReadWriteANSI.txt"
$firstLine = $null
$lastLine = $null
$contentDate = ""
$contentAdpater = ""


if (Test-path -path $pfad) {

    if(Test-path -path ($pfad + $datei1))
{
    clear-host
    Get-Content -path ($pfad + $datei1)
}

$contentDate = (Get-Date)
$contentAdpater = Get-Netadapter | Sort-Object -property name
Set-content -path ($pfad + $datei1) -value $contentDate, $contentAdpater
Set-Content -path ($pfad + $dateiASCII) -value $contentDate, $contentAdpater -Encoding ascii
Set-Content -path ($pfad + $dateiANSI) -value $contentDate, $contentAdpater -Encoding ansi


$firstLine = Get-content -path ($pfad + $datei1) -head 1
$lastLine = Get-Content -path ($pfad + $datei1) -Tail 1


Set-Content -path ($pfad + $datei2) -value ($firstLine + "`n" + $lastLine)

}
else {
    new-item -path ".\Downloads\" -name "Modul122" -ItemType "directory"
}



