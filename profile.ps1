
# $env:Path += ";D:\SysAdmin\scripts\PowerShellBasics"

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


# . D:\_workspace\dotfile\profile.ps1

# Git
function git-status { git status }
Set-Alias -Name gst -Value git-status

function git-addall { git add -A }
Set-Alias -Name gaa -Value git-addall

function git-branch { git branch $args }
Set-Alias -Name gb -Value git-branch

function git-diff { git diff $args }
Set-Alias -Name gd -Value git-diff

function git-diff-cached { git diff --cached }
Set-Alias -Name gdc -Value git-diff-cached

function git-diff-master { git diff master }
Set-Alias -Name gdm -Value git-diff-master

function git-diff-dev { git diff dev }
Set-Alias -Name gdd -Value git-diff-dev

function git-commit-all { git commit -a }
Set-Alias -Name gca -Value git-commit-all

function git-push { git push }
Set-Alias -Name gitPush -Value git-push


# function git-commit-m { git commit -m $args }
# Set-Alias -Name gcm -Value git-commit-m

# function git-checkout { git checkout $args }
# Set-Alias -Name gco -Value git-checkout

# function git-log { git log }
# Set-Alias -Name gl -Value git-log


$env:Path += ";$env:LOCALAPPDATA\Android\sdk\platform-tools"

# Set default variables
$env:hello = "world"

# Lazy way to use scripts as module
Set-Alias hello hostname
Set-Alias ConnectTo-EXO ConnectTo-EXO.ps1
Set-Alias Get-MFAStatus MFAStatus.ps1

Set-Alias codeDotFiles C:\Users\logic\_workspace\dotfiles\code\codeDotFiles.ps1
Set-Alias codeInventor C:\Users\logic\_workspace\dotfiles\code\codeInventor.ps1
Set-Alias code42StepperMotorDriverTryout  C:\Users\logic\_workspace\dotfiles\code\code42StepperMotorDriverTryout.ps1
Set-Alias codeAltiumDesigner  C:\Users\logic\_workspace\dotfiles\code\codeAltiumDesigner.ps1
Set-Alias codeArduinoPlaylist  C:\Users\logic\_workspace\dotfiles\code\codeArduinoPlaylist.ps1
Set-Alias codeEsp32Playlist  C:\Users\logic\_workspace\dotfiles\code\codeEsp32Playlist.ps1
Set-Alias codeEsp32Tryout  C:\Users\logic\_workspace\dotfiles\code\codeEsp32Tryout.ps1
Set-Alias codeEsp8266Playlist  C:\Users\logic\_workspace\dotfiles\code\codeEsp8266Playlist.ps1
Set-Alias codeKicadLibrary  C:\Users\logic\_workspace\dotfiles\code\codeKicadLibrary.ps1
Set-Alias codeKicadPlaylist  C:\Users\logic\_workspace\dotfiles\code\codeKicadPlaylist.ps1
Set-Alias codePythonPlaylist  C:\Users\logic\_workspace\dotfiles\code\codePythonPlaylist.ps1
Set-Alias codeReactPlaylist  C:\Users\logic\_workspace\dotfiles\code\codeReactPlaylist.ps1
Set-Alias codeStm32Tryout  C:\Users\logic\_workspace\dotfiles\code\codeStm32Tryout.ps1
Set-Alias codeTmpDel  C:\Users\logic\_workspace\dotfiles\code\codeTmpDel.ps1
Set-Alias codeTodo  C:\Users\logic\_workspace\dotfiles\code\codeTodo.ps1


Set-Alias syncDotFiles  C:\Users\logic\_workspace\dotfiles\sync\syncDotFiles.ps1

Set-Alias startFreeRouting  C:\Users\logic\_workspace\dotfiles\kicad\startFreeRouting.ps1

Set-Alias aria2cDownload  C:\Users\logic\_workspace\dotfiles\tools\aria2cDownload.ps1

Set-Alias goGithubProfile  C:\Users\logic\_workspace\dotfiles\go\goGithubProfile.ps1


# Create aliases for frequently used commands
Set-Alias im Import-Module
Set-Alias tn Test-NetConnection

# Load custom theme for Windows Terminal
# Import-Module posh-git
# Import-Module oh-my-posh
# Set-Theme LazyAdmin

# Install-Module posh-git -Scope CurrentUser
Import-Module posh-git

# oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/jandedobbeleer.omp.json | Invoke-Expression
Import-Module oh-my-posh

# Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons

Set-PoshPrompt -Theme spaceship
