### Base Windows Configuration                                                ###
### See also: https://gist.github.com/willwm/9dab807253f48279b2b0bbc7c5dad1d1 ###

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
BoxstarterShell
Set-WindowsExplorerOptions -EnableShowFileExtensions -DisableOpenFileExplorerToQuickAccess -DisableShowFrequentFoldersInQuickAccess -DisableShowRecentFilesInQuickAccess
Disable-BingSearch
Disable-GameBarTips
Enable-RemoteDesktop

# Development Tools
cinst -y 7zip
cinst -y dotnetcore
cinst -y dotnetcore-runtime
cinst -y dotnetcore-sdk
cinst -y git --params="/WindowsTerminal /NoShellIntegration"
cinst -y GoogleChrome
cinst -y nodejs
cinst -y nuget.commandline
cinst -y poshgit
cinst -y visualstudio2017buildtools
cinst -y visualstudio2017-workload-netcoretools
cinst -y visualstudio2017-workload-vctools
cinst -y visualstudiocode

# Utilities
cinst -y adb
cinst -y clipdiary
cinst -y everything
cinst -y filezilla
cinst -y icaros
cinst -y notepad3
cinst -y paint.net
cinst -y putty
cinst -y rufus
cinst -y snagit
cinst -y sysinternals
cinst -y windirstat
cinst -y winaero-tweaker

# Fonts
cinst -y firacode
cinst -y hackfont
cinst -y noto

# Color Theme
cinst -y colortool
refreshenv
colortool -b campbell
