
$env:Path += ";D:\SysAdmin\scripts\PowerShellBasics"

# Set default variables
$adminUPN = "lazyadmin@lazydev.onmicrosoft.com"
$sharepointAdminUrl = "https://lazydev-admin.sharepoint.com"

# Lazy way to use scripts as module
Set-Alias ConnectTo-SharePointAdmin ConnectTo-SharePointAdmin.ps1
Set-Alias ConnectTo-EXO ConnectTo-EXO.ps1
Set-Alias Get-MFAStatus MFAStatus.ps1
Set-Alias Get-MailboxSizeReport MailboxSizeReport.ps1
Set-Alias Get-OneDriveSizeReport OneDriveSizeReport.ps1

# Create aliases for frequently used commands
Set-Alias im Import-Module
Set-Alias tn Test-NetConnection

# oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/jandedobbeleer.omp.json | Invoke-Expression

# Load custom theme for Windows Terminal
# Import-Module posh-git
# Import-Module oh-my-posh
# Set-Theme LazyAdmin
