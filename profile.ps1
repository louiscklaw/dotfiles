# add to:
# C:\tools\Cmder\config\user_profile.ps1
# . G:\_workspace\dotfiles\profile.ps1

. G:\_workspace\dotfiles\develop.ps1
. G:\_workspace\dotfiles\alias.ps1
. G:\_workspace\dotfiles\docker.ps1

Set-Alias syncDotFiles  G:\_workspace\dotfiles\sync\syncDotFiles.ps1

# $Env:Path += ";G:\SysAdmin\scripts\PowerShellBasics"

# Set default variables
$adminUPN = "lazyadmin@lazydev.onmicrosoft.com"
$sharepointAdminUrl = "https://lazydev-admin.sharepoint.com"

# Set default variables
$Env:hello = "world"
$Env:MY_WORKSPACE = "G:\_workspace"
$Env:WORKSPACE_DIR = "G:\_workspace"

$Env:Path += ";c:\temp"
$Env:Path += ";$Env:LOCALAPPDATA\Android\sdk\platform-tools"

$Env:ANDROID_HOME = "C:\Users\logic\AppData\Local\Android\Sdk"
$Env:Path += ";C:\Users\logic\AppData\Local\Android\Sdk"

# choco install -y  openjdk11
$Env:JAVA_HOME = "C:\Program Files\OpenJDK\jdk-17.0.0.1"
$Env:Path += ";C:\Program Files\OpenJDK\jdk-17.0.0.1\bin"

$Env:Path += ";C:\tools\ffmpeg\bin"
$Env:Path += ";C:\tools\GStreamer\1.0\msvc_x86_64\bin"

$Env:Path += ";C:\tools\android_app_bundle"
$Env:PathExt += ";.jar"

$Env:Path += ";C:\Users\logic\AppData\Roaming\npm"

Write-Host "profile init done" -ForegroundColor Green
