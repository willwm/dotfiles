# Helper function to include hidden items (like ls -la)
function Get-ChildItemForce
{
  Get-ChildItem -Force;
}

function Get-PathList
{
  $Env:Path.Split(";");
}

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-alias
Set-Alias -Name la -Value Get-ChildItemForce;
Set-Alias -Name ll -Value Get-ChildItemForce;
Set-Alias -Name which -Value Get-Command;
Set-Alias -Name path -Value Get-PathList;