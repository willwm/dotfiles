# Exclude folders from Windows Security On-Access Scan
$folders = @(
    "$Env:UserProfile\Code",
    "$Env:UserProfile\AppData\Local\Docker",
    "$Env:UserProfile\AppData\Local\Yarn",
    "$Env:UserProfile\AppData\Roaming\npm",
    "$Env:UserProfile\AppData\Roaming\npm-cache",
    "C:\DevDB_BK",
    "C:\ElasticsearchData",
    "C:\RedisData",
    "C:\SQLData",
    "C:\inetpub",
    "C:\Windows\System32\inetsrv\config"
)
Add-MpPreference -ExclusionPath $folders -Force

# Exclude processes from Windows Security On-Access Scan
$processes = @(
    "C:\Program Files\Docker\Docker\com.docker.service",
    "C:\Program Files\Docker\Docker\resources\bin\docker.exe",
    "C:\Program Files\Docker\Docker\resources\com.docker.backend.exe",
    "C:\Program Files\Docker\Docker\resources\com.docker.proxy.exe",
    "C:\Program Files\dotnet\dotnet.exe",
    "C:\Program Files\nodejs\node.exe",
    "C:\Program Files (x86)\Yarn\bin\yarn",
    "$Env:UserProfile\AppData\Local\Programs\Microsoft VS Code\Code.exe"
)    
Add-MpPreference -ExclusionProcess $processes -Force

