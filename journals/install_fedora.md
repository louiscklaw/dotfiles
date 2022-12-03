# My fedora setup journal


aria2 -d /tmp -x 99 "http://hkg.mirror.rackspace.com/fedora/releases/37/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-37-1.7.iso"

`sudo dnf install -y autokey-gtk`

### Speed up dnf Package manager

```
sudo vi /etc/dnf/dnf.conf

# Then add the following as shown in the screenshot:

max_parallel_downloads=10
```

### tilix

```
sudo dnf install -y tilix
```

```
sudo dnf install -y 'google-roboto*' 'mozilla-fira*' fira-code-fonts
sudo dnf install -y google-cousine-fonts
```

### kicad

```
sudo dnf install -y --setopt=install_weak_deps=False  kicad kicad-packages3d
```

### blender

```

```

### zsh

```
<<<<<<< HEAD
sudo dnf install -y util-linux-user
sudo dnf install -y zsh
=======
sudo dnf install -y zsh util-linux-user
>>>>>>> 29c471e (update,)

# oh my zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

```

### autoenv

```
cd /tmp
git clone https://github.com/hyperupcall/autoenv ~/.autoenv
echo "source ~/.autoenv/activate.sh" >> ~/.zshrc

echo "AUTOENV_ASSUME_YES=1" >> ~/.zshrc

```

# ssh

```
sudo dnf install -y openssh-server
sudo systemctl start sshd.service
sudo systemctl stop sshd.service
```

```
git config --global user.email "louiscklaw@users.noreply.github.com"
git config --global user.name "louiscklaw"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=43200'
git config --global pull.rebase true
```

https://www.itzgeek.com/how-tos/linux/fedora-how-tos/install-android-studio-on-fedora.html

### install gnome extensions

```
sudo dnf install -y gnome-extensions-app.x86_64
sudo dnf install -y gnome-shell-extension-appindicator.noarch
sudo dnf install -y gnome-shell-extension-auto-move-windows.noarch
sudo dnf install -y gnome-shell-extension-background-logo.noarch
sudo dnf install -y gnome-shell-extension-caffeine.noarch
sudo dnf install -y gnome-shell-extension-freon.noarch
sudo dnf install -y gnome-shell-extension-gsconnect.x86_64
sudo dnf install -y gnome-shell-extension-just-perfection.noarch
sudo dnf install -y gnome-shell-extension-native-window-placement.noarch
sudo dnf install -y gnome-shell-extension-refresh-wifi.noarch
sudo dnf install -y gnome-shell-extension-unite.noarch
sudo dnf install -y gnome-shell-extension-user-theme.noarch
sudo dnf install -y gnome-shell-extension-material-shell.noarch
sudo dnf install -y gnome-shell-extension-mediacontrols.noarch
sudo dnf install -y gnome-shell-extension-openweather.noarch

```

### install docker

```
sudo dnf remove -y docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-selinux \
                docker-engine-selinux \
                docker-engine

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker
sudo docker run hello-world


```

### tmux

```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

```
sudo dnf install -y tilix
```

https://github.com/tommytran732/Linux-Setup-Scripts/blob/main/Fedora-Workstation-36.sh

```
sudo dnf install -y ibus-cangjie-engine-cangjie
```

# Enable Titlebar buttons

```
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
```

# Enable GNOME shell extensions

```
gsettings set org.gnome.shell disable-user-extensions false
```

# last update (17-sep-2022)

Things in this document might not work or be broken nowadays

```
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-37.noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-37.noarch.rpm
dnf update --refresh

dnf install intel-media-driver libva libva-utils gstreamer1-vaapi ffmpeg intel-gpu-tools mesa-dri-drivers mpv

google-chrome-stable --use-gl=desktop --enable-features=VaapiVideoDecoder
```

```
https://fedoraproject.org/wiki/Firefox_Hardware_acceleration
🔗 Configure VA-API Video decoding on Intel

Accelerated video decoding works well on most Intel GPUs as free drivers are available. There are two[1] drivers for Intel cards, libva-intel-driver (provides i965_drv_video.so) and intel-media-driver (iHD_drv_video.so). Currently, Firefox works with either libva-intel-driver or intel-media-driver.

Refer to this Intel chipsets video features table on Wikipedia to determine which codecs your hardware supports.

You can enable VA-API on Intel by these steps:

    Install libva, libva-utils, and libva-intel-driver packages.
    Install ffmpeg from RPM Fusion repository.
    Run vainfo on terminal to verify that VA-API works. If VA-API is disabled you're running on new hardware[2] and you need intel-media-driver from RPM Fusion repository non-free.
    Restart browser.
```

```bash
sudo dnf install -y intel-media-driver
sudo dnf install -y libva libva-utils libva-intel-driver
sudo dnf install -y ffmpeg

vainfo

```

## Insatll nvidia drivers (only this laptop)

```
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-37.noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-37.noarch.rpm
sudo dnf update --refresh

sudo dnf install akmod-nvidia -y
sudo dnf install xorg-x11-drv-nvidia-cuda -y

reboot
```

## Install Chrome, vlc, ffmpeg

```
sudo dnf config-manager --set-enabled google-chrome
<<<<<<< HEAD
sudo dnf install google-chrome-stable ffmpeg vlc -y
=======
sudo dnf install google-chrome-stable -y

ffmpeg vlc -y
>>>>>>> 29c471e (update,)
```

## Themes, icons and gnome extensions

i have quite a lot of icons and themes i like

```
$ cd ~/Downloads
$ git clone https://github.com/vinceliuice/vimix-gtk-themes && cd vimix-gtk-themes
$ ./Install
$ cd ..
$ rm -rf vimix-gtk-themes
$ git clone https://github.com/vinceliuice/Sierra-gtk-theme && cd Sierra-gtk-theme
$ ./install.sh
$ cd ..
$ rm -rf Sierra-gtk-theme
$ su
# dnf copr enable snwh/paper
# dnf makecache
# dnf install gtk-murrine-engine gtk2-engines gnome-tweak-tool chrome-gnome-shell arc-theme paper-icon-theme
```

Packages i usually install: [user themes](https://extensions.gnome.org/extension/19/user-themes/), [dash to dock](https://extensions.gnome.org/extension/307/dash-to-dock/),
[block caribou](https://extensions.gnome.org/extension/1326/block-caribou/),
[topicons Plus](https://extensions.gnome.org/extension/1031/topicons/),
[caffeine](https://extensions.gnome.org/extension/517/caffeine/)
[Intel cpu power manager](https://extensions.gnome.org/extension/945/cpu-power-manager/)  
Open tweak tools to set a theme to youre wish

## Make the laptop more power efficent (might result in boot errors with other laptops)

While doing these steps UNPLUG the laptop from power

```
sudo dnf install powertop tuned-utils thermald -y
systemctl start powertop
systemctl enable powertop
powertop --auto-tune

```

```
powertop

# tab -> tab -> enter -> change value below

Bad           Enable SATA link power management for host1
Bad           Autosuspend for USB device USB DEVICE [SONiX]
Bad           Autosuspend for USB device xHCI Host Controller [usb2]
Bad           Autosuspend for USB device USB2744 [Microchip Tech]
Bad           Autosuspend for USB device xHCI Host Controller [usb3]
Bad           Autosuspend for USB device USB2.0 Hub [1-7]
Bad           Autosuspend for USB device CSR8510 A10 [1-8.1]
Bad           Autosuspend for USB device xHCI Host Controller [usb1]
Bad           Autosuspend for USB device  SanDisk 3.2Gen1 [ USB]
Bad           Autosuspend for USB device Rapoo Gaming Mouse [RAPOO]
Bad           Autosuspend for USB device xHCI Host Controller [usb4]
```

In this file uncomment the **CPU*SCALING_MAX_FREQ*....** lines and lower the value to make the cpu less power hungry

```
# https://linrunner.de/tlp/installation/fedora.html


sudo dnf install -y tlp tlp-rdw
sudo dnf remove -y power-profiles-daemon

vi /etc/tlp.d/tlp.conf

systemctl enable tlp.service
systemctl restart tlp.service
systemctl mask systemd-rfkill.service systemd-rfkill.socket

shutdown 0 -rf
```

## Install i8kutils a better fan curf (only dell)

```
$ su
# dnf install acpi
# dnf config-manager --add-repo https://copr.fedorainfracloud.org/coprs/uriesk/i8kutils/repo/fedora-28/uriesk-i8kutils-fedora-28.repo
# dnf install i8kutils
# echo "i8k" >> /etc/modules
# echo "options i8k force=1" > /etc/modprobe.d/i8k.conf
# curl https://gist.githubusercontent.com/mjarkk/eadcd2e793bb5baa0c77f7a539ee7a23/raw/c01dda8f512a42037c446067eab33b4a62ebc0c6/Z-i8kmon.conf > /etc/i8kmon.conf
# curl https://gist.githubusercontent.com/mjarkk/eadcd2e793bb5baa0c77f7a539ee7a23/raw/c01dda8f512a42037c446067eab33b4a62ebc0c6/z-i8kmod.service > /usr/lib/systemd/system/i8kmod.service
# systemctl enable i8kmod
```

restart the laptop

## Install watchdog to fix `a job is running for...`

I noticed a wired bug in fedora where when i press shutdown it waits for 150s because of `a job is running for ...`

```
<<<<<<< HEAD
su
sudo dnf install -y watchdog
systemctl start watchdog
systemctl enable watchdog
=======
sudo dnf install -y watchdog
sudo systemctl start watchdog
sudo systemctl enable watchdog
>>>>>>> 29c471e (update,)
```

## The programs i need for programming

### VScode

```
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf update
dnf install code -y
exit
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
git config --global core.editor "code --wait"
```

[my vscode settings](https://github.com/mjarkk/dotfiles/tree/master/vscode)

### Nodejs

```
su
<<<<<<< HEAD

curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -

sudo dnf install -y nodejs
sudo yum install gcc-c++ make

curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum install yarn

=======
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo dnf install -y nodejs
>>>>>>> 29c471e (update,)
exit

mkdir ~/.npm-packages
prefix = ${HOME}/.npm-packages
npm config set prefix '~/.npm-packages'
echo 'PATH=$PATH:$HOME/.npm-packages/bin' >> $HOME/.zshrc
source ~/.bashrc


curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo dnf install -y yarn
```

### Golang

DO NOT RUN THIS IN A ROOT SHELL ('#')

```
$ sudo dnf install golang
$ mkdir ~/go
$ echo 'export GOPATH=$HOME/go' >> ~/.bashrc && echo 'PATH=$PATH:$GOPATH/bin' >> ~/.bashrc
$ source ~/.bashrc
```

### Php (laravel)

As webserver i use a docker compose config: https://github.com/mjarkk/docker-lemp-config  
For laravel devlopment i install:

```
$ sudo dnf install php php-common php-cli php-json php-pdo php-mbstring php-zip php-xml php-pdo_mysql php-pecl-redis
```

Install composer via: https://getcomposer.org/download/

```
$ composer global require "laravel/installer"
$ echo 'PATH=$PATH:$HOME/.config/composer/vendor/bin' >> $HOME/.bashrc
```

## Other programs

# install android studio

```
sudo dnf install -y qemu-kvm bridge-utils libvirt virt-install

cd /tmp
wget https://dl.google.com/dl/android/studio/ide-zips/2021.2.1.14/android-studio-2021.2.1.14-linux.tar.gz
<<<<<<< HEAD
tar -zxvf android-studio-2021.2.1.14-linux.tar.gz
sudo mv android-studio /opt/
=======
tar -zxvf android-studio-*-linux.tar.gz
mv android-studio /opt/
>>>>>>> 29c471e (update,)

sudo ln -sf /opt/android-studio/bin/studio.sh /usr/local/bin/android-studio
sudo vi /usr/share/applications/android-studio.desktop

```

```
[Desktop Entry]
Version=1.0
Type=Application
Name=Android Studio
Comment=Android Studio
Exec=bash -i "/opt/android-studio/bin/studio.sh" %f
Icon=/opt/android-studio/bin/studio.png
Categories=Development;IDE;
Terminal=false
StartupNotify=true
StartupWMClass=jetbrains-android-studio
Name[en_GB]=android-studio.desktop
```

# imwheel on startup


sudo dnf install -y imwheel
`# /home/logic/.config/autostart/.imwheel.desktop`

```
[Desktop Entry]
Name=imwheel
Icon=imwheel
Exec=imwheel
Terminal=false
Type=Application
X-GNOME-Autostart-enabled=true
```

```
mkdir -p ~/.config/autostart/

cat >~/.config/autostart/imwheel.desktop<<EOF
[Desktop Entry]
Version=1.0
Name=Imwheel
Comment=Enable mouse scroll
Icon=mouse
Exec=imwheel
Terminal=false
Type=Application
EOF

chmod a+x ~/.config/autostart/imwheel.desktop
imwheel
```










`ln -s ~/_workspace/dotfiles/.imwheelrc .imwheelrc`

### install slack

```
cd /tmp

wget https://downloads.slack-edge.com/releases/linux/4.28.182/prod/x64/slack-4.28.182-0.1.el8.x86_64.rpm

sudo dnf install -y slack-4.28.182-0.1.el8.x86_64.rpm

```

### install keybase

```bash
<<<<<<< HEAD
sudo yum install -y https://prerelease.keybase.io/keybase_amd64.rpm
=======
sudo dnf install -y https://prerelease.keybase.io/keybase_amd64.rpm
>>>>>>> 29c471e (update,)

run_keybase

```

### install utilities

```
<<<<<<< HEAD
sudo dnf install -y filezilla ephemeral  apostrophe
=======
sudo dnf install -y filezilla 
sudo dnf install -y ephemeral 
sudo dnf install -y apostrophe
sudo dnf install -y entr
sudo dnf install -y flameshot
sudo dnf install -y PrusaSlicer
sudo dnf install -y python3-pip
sudo pip install magic-wormhole
>>>>>>> 29c471e (update,)

web 

sudo dnf copr enable zeno/scrcpy
sudo dnf install -y scrcpy

<<<<<<< HEAD

sudo dnf install -y entr aria2 flameshot PrusaSlicer
=======
aria2c
sudo dnf install -y entr  flameshot PrusaSlicer
>>>>>>> 29c471e (update,)

sudo npm install -g firebase-tools

```

### install obs

```
sudo dnf install -y kmod-v4l2loopback

sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-37.noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-37.noarch.rpm

sudo dnf install -y obs-studio
sudo dnf install -y xorg-x11-drv-nvidia-cuda

```

### install logseq

```
cd ~/Appimage

wget https://github.com/logseq/logseq/releases/download/0.8.8/Logseq-linux-x64-0.8.8.AppImage

sudo vi /usr/share/applications/logseq.desktop

[Desktop Entry]
Version=1.0
Type=Application
Name=Logseq
Comment=Logseq
Exec=/home/logic/Appimage/Logseq-linux-x64-0.8.8.AppImage
Icon=/opt/android-studio/bin/studio.png
Categories=Development;IDE;
Terminal=false
StartupNotify=false
Name[en_GB]=logseq.desktop
```

### nomachine

```
cd /tmp
wget https://download.nomachine.com/download/8.1/Linux/nomachine_8.1.2_1_x86_64.rpm
sudo dnf install -y ./nomachine_8.1.2_1_x86_64.rpm
<<<<<<< HEAD

=======
>>>>>>> 29c471e (update,)
```

### install discord

```bash
<<<<<<< HEAD
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-36.noarch.rpm
=======
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-37.noarch.rpm
>>>>>>> 29c471e (update,)

sudo dnf install -y discord

```
