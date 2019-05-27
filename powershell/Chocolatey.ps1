function Install-Chocolatey {
    # Install Chocolatey (https://chocolatey.org/install#installing-chocolatey)
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

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

function Install-BasePackages {
    # Install development tools
    $packages = @(
        "git",
        "docker-desktop",
        "dotnetcore-sdk",
        "nodejs", "yarn"
    )

    choco install $packages;
}

function Install-OptionalPackages {
    # Feel free to modify the list below to add/remove your preferred tools
    $optionalPackages = @(
        "slack",
  
        # Source Control
        "gitextensions",
    
        # QA and Unit Testing
        "postman",
        "nunit-console-runner",
        "nunit-extension-nunit-project-loader",
        "nunit-extension-nunit-v2-result-writer",
        "nunit-extension-vs-project-loader",
    
        # Text Editors
        "visualstudiocode",
        "notepadplusplus",
        "notepad3",
    
        # Images and Graphics
        "paint.net",
        "snagit",
    
        # System Utilities
        "sysinternals",
        "7zip",
        "boxstarter",
    
        # Command line tools
        "jq",
        "nuget.commandline",
        "awscli"
    )
  
    choco install $optionalPackages;
}

function Install-PowerShellGetModules {
    Install-Module SqlServer
}

Write-Host @("`n Run one or more of the following functions: `n"
    " Install-BasePackages `n"
    " Install-OptionalPackages `n"
    " Install-PowerShellGetModules `n")