# Lazy way to use scripts as module
# Set-Alias hello hostname
# Set-Alias ConnectTo-SharePointAdmin ConnectTo-SharePointAdmin.ps1
# Set-Alias ConnectTo-EXO ConnectTo-EXO.ps1
# Set-Alias Get-MFAStatus MFAStatus.ps1
# Set-Alias Get-MailboxSizeReport MailboxSizeReport.ps1
# Set-Alias Get-OneDriveSizeReport OneDriveSizeReport.ps1

# Create aliases for frequently used commands
# Set-Alias im Import-Module
# Set-Alias tn Test-NetConnection

function ssh_m73 {ssh logic@192.168.10.61}
Set-Alias -Name sshM73 -Value ssh_m73

function ssh_nuc {ssh logic@192.168.10.21}
Set-Alias -Name sshNUC -Value ssh_nuc

function sync_git {git pull ; git push}
Set-Alias -Name syncGit -Value sync_git

function aria_download {aria2c -x 16 -s 16 --dht-listen-port=51000-51099 --listen-port=51000-51099 $args}
Set-Alias -Name ariaDownload -Value aria_download

Set-Alias startFreeRouting  $Env:MY_WORKSPACE\dotfiles\kicad\startFreeRouting.ps1
Set-Alias aria2cDownload  $Env:MY_WORKSPACE\dotfiles\tools\aria2cDownload.ps1
Set-Alias goGithubProfile  $Env:MY_WORKSPACE\dotfiles\go\goGithubProfile.ps1
