# Description: Boxstarter Script
# Author: Jess Frazelle <jess@linux.com>
# Edited by: Will Wolff-Myren <willwm@gmail.com>
# Last Updated: 2019-01-16
#
# Install boxstarter:
# 	. { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
#
# You might need to set: Set-ExecutionPolicy RemoteSigned
#
# Run this boxstarter by calling the following from an **elevated** command-prompt:
# 	start http://boxstarter.org/package/nr/url?<URL-TO-RAW-GIST>
# OR
# 	Install-BoxstarterPackage -PackageName <URL-TO-RAW-GIST> -DisableReboots
#
# Learn more: http://boxstarter.org/Learn/WebLauncher

#--- Rename the Computer ---
# Requires restart, or add the -Restart flag
#$computername = "spectre"
#if ($env:computername -ne $computername) {
#	Rename-Computer -NewName $computername
#}

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
choco install docker-for-windows
choco install dotnetcore
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

#--- Windows Settings ---

# Turn off People in Taskbar
If (-Not (Test-Path "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
  New-Item -Path HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People | Out-Null
}
Set-ItemProperty -Path "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name PeopleBand -Type DWord -Value 0

# Disable Sticky keys prompt
Function DisableStickyKeys {
  Write-Host "Disabling Sticky keys prompt..."
  Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
}
DisableStickyKeys;

# Hide 3D Objects icon from Explorer namespace - Hides the icon also from personal folders and open/save dialogs
Function Hide3DObjectsFromExplorer {
  Write-Host "Hiding 3D Objects icon from Explorer namespace..."
  If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
      New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
  }
  Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
  If (!(Test-Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
      New-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
  }
  Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
}
Hide3DObjectsFromExplorer;

# Hide 3D Objects icon from This PC - The icon remains in personal folders and open/save dialogs
Function Hide3DObjectsFromThisPC {
  Write-Host "Hiding 3D Objects icon from This PC..."
  Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue
}
Hide3DObjectsFromThisPC;


#--- Restore Temporary Settings ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula