
# $env:Path += ";D:\SysAdmin\scripts\PowerShellBasics"

# Set default variables
$adminUPN = "lazyadmin@lazydev.onmicrosoft.com"
$sharepointAdminUrl = "https://lazydev-admin.sharepoint.com"

$env:MY_WORKSPACE="D:\_workspace"

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

function git-checkout { git checkout $args }
Set-Alias -Name gco -Value git-checkout

# function git-commit-m { git commit -m $args }
# Set-Alias -Name gcm -Value git-commit-m

function code-expo-playlist { code $env:MY_WORKSPACE\expo-playlist }
Set-Alias -Name codeExpoPlaylist -Value code-expo-playlist

function code-inventor { code $env:MY_WORKSPACE\inventor-tryout }
Set-Alias -Name codeInventor -Value code-inventor

function code_kicad_library { code $env:MY_WORKSPACE\kicad_library }
Set-Alias -Name codeKicadLibrary -Value code_kicad_library

function code_kicad_playlist { code $env:MY_WORKSPACE\kicad-playlist }
Set-Alias -Name codeKicadPlaylist -Value code_kicad_playlist

function code_dot_files {code $env:MY_WORKSPACE\dotfiles}
Set-Alias -Name codeDotFiles -Value code_dot_files

function code_inventor {code $env:MY_WORKSPACE\inventor-tryout}
Set-Alias -Name codeInventor -Value code_inventor

# function code42_stepper_motor_driver_tryout {code $env:MY_WORKSPACE\code42StepperMotorDriverTryout}
# Set-Alias -Name code42StepperMotorDriverTryout -Value code42_stepper_motor_driver_tryout

function code_altium_designer {code $env:MY_WORKSPACE\altium-designer-playlist}
Set-Alias -Name codeAltiumDesigner -Value code_altium_designer

function code_arduino_playlist {code $env:MY_WORKSPACE\arduino-playlist}
Set-Alias -Name codeArduinoPlaylist -Value code_arduino_playlist

function code_esp32_playlist {code $env:MY_WORKSPACE\esp32-playlist}
Set-Alias -Name codeEsp32Playlist -Value code_esp32_playlist

function code_esp8266_playlist {code $env:MY_WORKSPACE\esp8266-tryout}
Set-Alias -Name codeEsp8266Playlist -Value code_esp8266_playlist

function code_python_playlist {code $env:MY_WORKSPACE\codePythonPlaylist}
Set-Alias -Name codePythonPlaylist -Value code_python_playlist

function code_react_playlist {code $env:MY_WORKSPACE\react-playlist}
Set-Alias -Name codeReactPlaylist -Value code_react_playlist

function code_stm32_tryout {code $env:MY_WORKSPACE\stm32_tryout}
Set-Alias -Name codeStm32Tryout -Value code_stm32_tryout

function code_tmp_del {code $env:MY_WORKSPACE\temp\_del}
Set-Alias -Name codeTmpDel -Value code_tmp_del

function code_todo {code D:\_todo}
Set-Alias -Name codeTodo -Value code_todo



$env:Path += ";$env:LOCALAPPDATA\Android\sdk\platform-tools"

# Set default variables
$env:hello = "world"

# Lazy way to use scripts as module
Set-Alias hello hostname
Set-Alias ConnectTo-EXO ConnectTo-EXO.ps1
Set-Alias Get-MFAStatus MFAStatus.ps1


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