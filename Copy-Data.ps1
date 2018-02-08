#This script will copy data from the Data folder to the desktop of the local machine.
function CopyData ($SourceDirectory,$DestinationDirectory) {
    if (-Not(Test-Path -Path $DestinationDirectory)) {
        Copy-Item $SourceDirectory -Destination $DestinationDirectory -Recurse
    }
    else {
        Get-Childitem -Path $SourceDirectory | Copy-Item -Destination $DestinationDirectory -Recurse
    }
}

CopyData -SourceDirectory .\Data -DestinationDirectory "C:\Users\Luke\Desktop\Data"