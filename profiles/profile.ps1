$codeRoot = "$Env:UserProfile\Code";
$gitHubRoot = "$Env:UserProfile\GitHub";

# Helper function to include hidden items (like ls -la)
function Get-ChildItemForce
{
  Get-ChildItem -Force;
}

function Get-PathList
{
  $Env:Path.Split(";");
}

function Go-GithubDev
{
  Import-PoshGit;
  Set-Location $gitHubRoot;
  Get-ChildItem;
}

function Import-PoshGit
{
  Import-Module posh-git;
}

function Start-AdminPowerShell
{
  switch ($PSEdition)
  {
    "Desktop" { Start-Process PowerShell -Verb RunAs; }
    "Core" { Start-Process pwsh -Verb RunAs; }
  }
}

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-alias
Set-Alias -Name la -Value Get-ChildItemForce;
Set-Alias -Name ll -Value Get-ChildItemForce;
Set-Alias -Name which -Value Get-Command;
Set-Alias -Name path -Value Get-PathList;
Set-Alias -Name posh -Value Import-PoshGit;
Set-Alias -Name su -Value Start-AdminPowerShell;