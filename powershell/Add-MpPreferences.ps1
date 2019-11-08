# Exclude folders from Windows Security On-Access Scan
Add-MpPreference -ExclusionPath "$Env:UserProfile\Code" -Force
Add-MpPreference -ExclusionPath "$Env:UserProfile\AppData\Local\Yarn" -Force
Add-MpPreference -ExclusionPath "$Env:UserProfile\AppData\Roaming\npm" -Force
Add-MpPreference -ExclusionPath "$Env:UserProfile\AppData\Roaming\npm-cache" -Force