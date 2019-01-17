#--- Uninstall unecessary applications that come with Windows out of the box ---

# --- Functions --- #
function Get-InstalledAppxPackages()
{
    Get-AppxPackage | Sort-Object | ForEach-Object { $_.Name }
}

function Uninstall-AppxPackage($packageName) 
{
    Write-Host "Uninstall $packageName";
    Get-AppxPackage $packageName | Remove-AppxPackage;
}

Set-Alias -Name lsappx -Value Get-InstalledAppxPackages;
Set-Alias -Name unappx -Value Uninstall-AppxPackage;

# --- Commands --- #

# Save a list of currently installed packages to text file...

lsappx > OriginalAppxPackages.txt;

# Begin uninstalling...

unappx *Autodesk*
unappx *BubbleWitch*
unappx *Dropbox*
unappx *Facebook*
unappx *Keeper*
unappx *MarchofEmpires*
unappx *Netflix*
unappx *Twitter*
unappx Fitbit.FitbitCoach
unappx king.com.CandyCrush*
unappx Microsoft.3DBuilder
unappx Microsoft.3DViewer
unappx Microsoft.BingFinance
unappx Microsoft.BingNews
unappx Microsoft.BingSports
unappx Microsoft.BingWeather
unappx Microsoft.CommsPhone
unappx Microsoft.Getstarted
unappx Microsoft.Messaging
unappx Microsoft.MicrosoftOfficeHub
unappx Microsoft.Office.OneNote
unappx Microsoft.Office.Sway
unappx Microsoft.OneConnect
unappx Microsoft.People
unappx Microsoft.SkypeApp
unappx microsoft.windowscommunicationsapps
unappx Microsoft.WindowsFeedbackHub
unappx Microsoft.WindowsMaps
unappx Microsoft.WindowsPhone
unappx Microsoft.WindowsSoundRecorder
unappx NORDCURRENT.COOKINGFEVER
unappx ThumbmunkeysLtd.PhototasticCollage