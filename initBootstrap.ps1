choco feature enable -n allowGlobalConfirmation

choco install 7zip.install -v -y
choco install androidstudio -v -y
choco install aria2 -v -y
choco install autohotkey.portable -v -y
choco install cmder -v -y
choco install curl -v -y
choco install dellcommandupdate -v -y
choco install deskpins -v -y
choco install discord -v -y
choco install figma -v -y
choco install filezilla -v -y
choco install firacode -v -y
choco install git -v -y
choco install github-desktop -v -y
choco install gnuwin32-coreutils.portable -v -y
choco install httpie -v -y
choco install hwmonitor -v -y
choco install jetbrainsmono -v -y
choco install line -v -y
choco install nodejs-lts -v -y
choco install obs-studio -v -y
choco install oh-my-posh -v -y
choco install picpick.portable -v -y
choco install powershell.portable -v -y
choco install prusaslicer -v -y
choco install putty -v -y
choco install python3 -v -y
choco install rpi-imager -v -y
choco install signal -v -y
choco install slack -v -y
choco install sourcetree -v -y
choco install streamlabs-obs -v -y
choco install telegram -v -y
choco install virtualbox -v -y
choco install visualstudio2022community -v -y
choco install vlc -v -y
choco install vscode -v -y
choco install wechat -v -y
choco install whatsapp -v -y
choco install winscp -v -y
choco install winsshterm -v -y
choco install wsl-ssh-pageant -v -y
choco install xnviewmp.install -v -y


# @REM C:\tools\msys64\usr\bin
# @REM C:\tools\msys64\mingw64\bin
choco install msys2 -v -y

powercfg.exe /hibernate off

# : stop windows update
net stop wuauserv
net stop bits
net stop dosvc

Install-Module ps-autoenv
Add-Content $PROFILE @("`n", "import-module ps-autoenv")


Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart
