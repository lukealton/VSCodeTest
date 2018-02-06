#This script will copy data from the Data folder to the desktop of the local machine.
if (-Not(Test-Path -Path "C:\Users\Luke\Desktop\Data")) {
    Copy-Item .\Data -Destination C:\Users\Luke\Desktop\Data -Recurse
}
else {
    Get-Childitem -Path .\Data | Copy-Item -Destination "C:\Users\Luke\Desktop\Data" -Recurse
}
