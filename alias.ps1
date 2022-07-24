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

function goDel {
  d:
  cd d:\_del
}

function gitCloneToDel(){
  goDel
  gitCloneShallow $args
}

function goGithubRepo(){
  $cmdOutput = git remote get-url origin
  echo $cmdOutput
  $http_link = $cmdOutput.replace('git@github.com:','http://www.github.com/')
  start chrome $http_link
}

function ssh_m73 {ssh logic@192.168.10.61}
Set-Alias -Name sshM73 -Value ssh_m73

function ssh_nuc {ssh logic@192.168.10.21}
Set-Alias -Name sshNUC -Value ssh_nuc

function sync_git {git pull ; git push}
Set-Alias -Name syncGit -Value sync_git

function aria_download {aria2c -x 16 -s 16 --dht-listen-port=51000-51099 --listen-port=51000-51099 $args}
Set-Alias -Name ariaDownload -Value aria_download

Set-Alias startFreeRouting  $Env:WORKSPACE_DIR\dotfiles\kicad\startFreeRouting.ps1
Set-Alias aria2cDownload  $Env:WORKSPACE_DIR\dotfiles\tools\aria2cDownload.ps1
Set-Alias goGithubProfile  $Env:WORKSPACE_DIR\dotfiles\go\goGithubProfile.ps1

function catIdRsaPub { type $env:USERPROFILE\.ssh\id_rsa.pub }

function sshCopyId {type $env:USERPROFILE\.ssh\id_rsa.pub | ssh $args "cat >> .ssh/authorized_keys"}

function gitCloneShallow {git clone --depth=3 {$args}}

function open {explorer ${args}}