#--- Chocolatey/Boxstarter Setup ---
  # Install Boxstarter:
  Set-ExecutionPolicy RemoteSigned;
  . { Invoke-WebRequest -useb http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; get-boxstarter -Force

  # Disable chocolatey's confirmation prompt to speed up installations
  choco feature enable -n allowGlobalConfirmation

#---- TEMPORARY ---
Disable-UAC

#--- Windows Settings ---
Disable-BingSearch
Disable-GameBarTips

Set-WindowsExplorerOptions -EnableShowFileExtensions -EnableShowProtectedOSFiles

#--- Windows Subsystems/Features ---
choco install Containers -source windowsFeatures
choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install Microsoft-Windows-Subsystem-Linux -source windowsFeatures

#--- Tools ---
choco install adb
choco install 7zip
choco install git -params '"/GitAndUnixToolsOnPath /WindowsTerminal /NoShellIntegration"'
choco install notepad3
choco install notepadplusplus
choco install pandoc
choco install powershell-core
choco install rufus
choco install sizer
choco install sysinternals
choco install winaero-tweaker
choco install windirstat

#--- Development ---
choco install docker-desktop
choco install dotnetcore-sdk
choco install jq
choco install linqpad
choco install nodejs
choco install python2
choco install python3
choco install yarn

#--- Apps ---
choco install everything
choco install filezilla
choco install firefox
choco install googlechrome
choco install paint.net

#--- Optional/Extras ---
#choco install aida64-extreme
#choco install clipdiary
#choco install fiddler4
#choco install ffmpeg
#choco install imagemagick
#choco install optipng
#choco install performancetest
#choco install pngquant
#choco install rescuetime
#choco install snagit
#choco install youtube-dl

#--- Restore Temporary Settings ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula