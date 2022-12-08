# Exclude folders from Windows Security On-Access Scan
$folders = @(
    "$Env:UserProfile\Code",
    "$Env:UserProfile\GitHub",
    "$Env:UserProfile\Scoop"

    "$Env:LOCALAPPDATA\Docker",
    "$Env:LOCALAPPDATA\Yarn",

    "$Env:APPDATA\npm",
    "$Env:APPDATA\npm-cache",    

    "$Env:ProgramData\scoop",

    "$Env:windir\System32\inetsrv\config",

    "$Env:SystemDrive\DevDB_BK",
    "$Env:SystemDrive\inetpub"
)
Add-MpPreference -ExclusionPath $folders -Force

Write-Host "`n`nFolders Excluded From Scan:"
(Get-MpPreference).ExclusionPath

# Exclude processes from Windows Security On-Access Scan
$processes = @(
    "$Env:LOCALAPPDATA\Programs\Microsoft VS Code\Code.exe",
    "$Env:LOCALAPPDATA\Programs\Bitwarden\Bitwarden.exe",

    "$Env:ProgramFiles\Docker\Docker\com.docker.service",
    "$Env:ProgramFiles\Docker\Docker\frontend\Docker Desktop.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\bin\docker.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\com.docker.backend.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\com.docker.dev-envs.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\com.docker.extensions.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\com.docker.proxy.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\com.docker.vpnkit.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\com.docker.wsl-distro-proxy.exe",
    "$Env:ProgramFiles\Docker\Docker\resources\vpnkit-bridge.exe",
    "$Env:ProgramFiles\dotnet\dotnet.exe",
    "$Env:ProgramFiles\Everything\Everything.exe",
    "$Env:ProgramFiles\Microsoft SQL Server\90\Shared\sqlwriter.exe",
    "$Env:ProgramFiles\nodejs\node.exe",

    "${Env:ProgramFiles(x86)}\Common Files\Red Gate\Shared Client\RedGate.Client.Service.exe",
    "${Env:ProgramFiles(x86)}\Microsoft OneDrive\OneDrive.exe",
    "${Env:ProgramFiles(x86)}\Microsoft SQL Server Management Studio 18\Common7\IDE\Ssms.exe",
    "${Env:ProgramFiles(x86)}\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe",
    "${Env:ProgramFiles(x86)}\Microsoft Visual Studio\2019\Professional\MSBuild\Microsoft\VisualStudio\NodeJs\win-x64\node.exe",
    "${Env:ProgramFiles(x86)}\Yarn\bin\yarn",

    "$Env:windir\System32\inetsrv\inetinfo.exe",
    "$Env:windir\System32\inetsrv\w3wp.exe",
    "$Env:windir\System32\lxss\wslhost.exe",
    "$Env:windir\System32\wsl.exe",

    "ServiceHub.RoslynCodeAnalysisService.exe",
    "procmon.exe",
    "procexp.exe"
)    
Add-MpPreference -ExclusionProcess $processes -Force

Write-Host "`nProcesses Excluded From Scan:"
(Get-MpPreference).ExclusionProcess
Write-Host "`n"