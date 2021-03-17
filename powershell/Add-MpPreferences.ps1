# Exclude folders from Windows Security On-Access Scan
$folders = @(
    "$Env:UserProfile\Code",
    "$Env:UserProfile\Development",
    "$Env:UserProfile\AppData\Local\Docker",
    "$Env:UserProfile\AppData\Local\Yarn",
    "$Env:UserProfile\AppData\Roaming\npm",
    "$Env:UserProfile\AppData\Roaming\npm-cache",
    "$Env:UserProfile\Scoop"
    "C:\DevDB_BK",
    "C:\ElasticsearchData",
    "C:\RedisData",
    "C:\SQLData",
    "C:\inetpub",
    "C:\ProgramData\scoop",
    "C:\Windows\System32\inetsrv\config"
)
Add-MpPreference -ExclusionPath $folders -Force

Write-Host "`n`nFolders Excluded From Scan:"
(Get-MpPreference).ExclusionPath

# Exclude processes from Windows Security On-Access Scan
$processes = @(
    "$Env:UserProfile\AppData\Local\Programs\Microsoft VS Code\Code.exe",
    "C:\Program Files\Docker\Docker\com.docker.service",
    "C:\Program Files\Docker\Docker\Docker Desktop.exe",
    "C:\Program Files\Docker\Docker\resources\bin\docker.exe",
    "C:\Program Files\Docker\Docker\resources\com.docker.backend.exe",
    "C:\Program Files\Docker\Docker\resources\com.docker.proxy.exe",
    "C:\Program Files\Docker\Docker\resources\com.docker.wsl-distro-proxy.exe",
    "C:\Program Files\Docker\Docker\resources\vpnkit-bridge.exe",
    "C:\Program Files\Everything\Everything.exe",
    "C:\Program Files\dotnet\dotnet.exe",
    "C:\Program Files\nodejs\node.exe",
    "C:\Program Files (x86)\Microsoft OneDrive\OneDrive.exe",
    "C:\Program Files (x86)\Yarn\bin\yarn",
    "C:\Windows\System32\wsl.exe",
    "C:\Windows\System32\lxss\wslhost.exe"
)    
Add-MpPreference -ExclusionProcess $processes -Force

Write-Host "`nProcesses Excluded From Scan:"
(Get-MpPreference).ExclusionProcess
Write-Host "`n"

