### Base Windows Configuration ###

# Enable Windows Features...
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart

### Chocolatey Installs ###

# Install Chocolatey: https://chocolatey.org/install
Set-ExecutionPolicy AllSigned; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Boxstarter: http://boxstarter.org/InstallBoxstarter
cinst -y boxstarter

# Boxstarter Configuration Commands (gcm -module Boxstarter.WinConfig)
Set-WindowsExplorerOptions -EnableShowFileExtensions -DisableOpenFileExplorerToQuickAccess -DisableShowFrequentFoldersInQuickAccess -DisableShowRecentFilesInQuickAccess
Disable-BingSearch
Disable-GameBarTips
Enable-RemoteDesktop

# Essential Utilities...
cinst -y 7zip clipdiary everything icaros nuget.commandline putty rufus sizer sysinternals windirstat

# Essential Applications...
cinst -y filezilla googlechrome notepadplusplus paint.net snagit

# Development Frameworks
cinst -y dotnetcore dotnetcore-sdk nodejs python ruby ruby2.devkit

# Development Tools
cinst -y fiddler4 git linqpad visualstudiocode

# Customization > Fonts
cinst -y sourcecodepro robotofonts firacode hackfont noto opensans