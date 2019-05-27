function Install-Boxstarter {
    # Install Boxstarter:
    Set-ExecutionPolicy RemoteSigned;
    . { Invoke-WebRequest -useb http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; get-boxstarter -Force

    # Disable chocolatey's confirmation prompt to speed up installations
    choco feature enable -n allowGlobalConfirmation
}

function Install-WindowsFeatures {
    # Enable required Windows Features
    $features = @(
        "Containers", 
        "Microsoft-Hyper-V-All",
        "Microsoft-Windows-Subsystem-Linux",
        "VirtualMachinePlatform"
    )

    choco install -source windowsFeatures $features
}

function Install-ChocolateyPackages([switch]$includeOptional) {
    $basePackages = @(
        "git",
        "docker-desktop",
        "dotnetcore-sdk",
        "nodejs", "yarn",
        "powershell-core",

        # Browsers
        "googlechrome",
        "firefox"
    )

    $optionalPackages = @(
        # Chat/Messaging
        "slack",
        "discord"
  
        # Source Control
        "gitextensions",
    
        # QA and Unit Testing
        "postman",
        "nunit-console-runner",
        "nunit-extension-nunit-project-loader",
        "nunit-extension-nunit-v2-result-writer",
        "nunit-extension-vs-project-loader",
    
        # Text Editors / IDEs
        "visualstudiocode",
        "notepadplusplus",
        "notepad3",
        "linqpad"
    
        # Images and Graphics
        "paint.net",
        "snagit",
    
        # System Utilities
        "sysinternals",
        "7zip",
        "rufus",
        "sizer",
        "winaero-tweaker",
        "windirstat",
        "everything"
    
        # Command line tools
        "jq",
        "nuget.commandline",
        "awscli"
    )

    choco install $basePackages

    if ($includeOptional) {
        choco install $optionalPackages
    }
}

function Install-PowerShellGetModules {
  Install-Module SqlServer
}

function Set-WindowsOptionsWithBoxstarter {
  Disable-BingSearch
  Disable-GameBarTips

  Set-WindowsExplorerOptions -EnableShowFileExtensions -EnableShowProtectedOSFiles
}

function Invoke-WindowsUpdate {
  Enable-MicrosoftUpdate
  Install-WindowsUpdate -acceptEula
}

# Run all...
Install-Boxstarter
Install-WindowsFeatures
Install-ChocolateyPackages -includeOptional
Install-PowerShellGetModules
Set-WindowsOptionsWithBoxstarter
Invoke-WindowsUpdate