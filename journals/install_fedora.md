# My fedora setup journal

# ssh

`sudo dnf install -y openssh-server;`

`sudo systemctl start sshd.service;`

`sudo systemctl stop sshd.service;`


```
git config --global user.email "louiscklaw@users.noreply.github.com"
git config --global user.name "louiscklaw"
```

https://www.itzgeek.com/how-tos/linux/fedora-how-tos/install-android-studio-on-fedora.html

### install gnome extensions
```
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
sudo dnf remove docker \
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
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker
sudo docker run hello-world


```

### tmux
```
$
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

sudo dnf install -y tilix

https://github.com/tommytran732/Linux-Setup-Scripts/blob/main/Fedora-Workstation-36.sh

sudo dnf install -y ibus-cangjie-engine-cangjie


# Enable Titlebar buttons
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Enable GNOME shell extensions
gsettings set org.gnome.shell disable-user-extensions false


# last update (17-sep-2022)
Things in this document might not work or be broken nowadays

```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install intel-media-driver libva libva-utils gstreamer1-vaapi ffmpeg intel-gpu-tools mesa-dri-drivers mpv

sudo dnf install -y intel-media-driver
$ google-chrome-stable --use-gl=desktop --enable-features=VaapiVideoDecoder
```


## my laptop:
I'm writing this here because a few things in here are spesific to this model laptop.  
Dell XPS 15 9560 (4k) touch screen

  
## Insatll nvidia drivers (only this laptop)
```
$ su
# dnf install fedora-workstation-repositories -y
# dnf config-manager --set-enabled rpmfusion-nonfree-nvidia-driver
# dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
```
Reboot..  
Open the **software app**. Click **Add-ons** > **Hardware Drivers** > **NVIDIA Linux Graphics Driver** > **Install**.
(in the software center you will notice that there are 2 *nvidia linux graphics driver* chose the one where the source is NOT from **rpmfusion.org** this one is less bugy, but if it doesn't work out for you chose the other one)  
  
## Install Chrome, vlc, ffmpeg
```
$ su
# dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# dnf install fedora-workstation-repositories
# dnf config-manager --set-enabled google-chrome
# dnf install google-chrome-stable ffmpeg vlc -y
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
$ su 
# dnf install powertop tlp tuned-utils thermald -y
# systemctl start powertop
# systemctl enable powertop
# powertop --auto-tune
# nano /etc/default/tlp
```
In this file uncomment the **CPU_SCALING_MAX_FREQ_....** lines and lower the value to make the cpu less power hungry
```
# systemctl enable tlp
# shutdown 0 -rf 
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
$ su
# dnf install watchdog
# systemctl start watchdog
# systemctl enable watchdog
```

## The programs i need for programming
### Git
```
$ git config --global user.name "mjarkk"
$ git config --global user.email "mkopenga@gmail.com"
$ git config --global credential.helper cache
$ git config --global credential.helper 'cache --timeout=43200'
```

### VScode
```
$ su
# rpm --import https://packages.microsoft.com/keys/microsoft.asc
# sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
# dnf update
# dnf install code -y
# exit
$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
$ git config --global core.editor "code --wait"
```
[my vscode settings](https://github.com/mjarkk/dotfiles/tree/master/vscode)  

### Nodejs
```
$ su
# curl -sL https://rpm.nodesource.com/setup_16.x | bash -
# dnf install nodejs
# exit
$ mkdir ~/.npm-packages
$ prefix = ${HOME}/.npm-packages
$ npm config set prefix '~/.npm-packages'
$ echo 'PATH=$PATH:$HOME/.npm-packages/bin' >> $HOME/.bashrc
$ source ~/.bashrc
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


### Discord
1. [Download](https://github.com/RPM-Outpost/discord/archive/master.zip) and extract the zip.
2. Open a terminal and `cd` to the `discord-master` directory.
3. Run one of the following depending on the version you want to create a package for:
  - Discord Stable: `./create-package.sh stable`
  - Discord PTB: `./create-package.sh ptb`
  - Discord Canary: `./create-package.sh canary`

### Imgur screenshot
A easy way to upload pictures to imgur and share them with friends
```
$ su
# dnf copr enable valdikss/imgur-screenshot
# dnf install imgur-screenshot
```


# install android studio
sudo dnf install -y qemu-kvm bridge-utils libvirt virt-install

cd /tmp
wget https://dl.google.com/dl/android/studio/ide-zips/2021.2.1.14/android-studio-2021.2.1.14-linux.tar.gz
sudo tar -zxvf android-studio-*-linux.tar.gz
sudo mv android-studio /opt/


sudo ln -sf /opt/android-studio/bin/studio.sh /usr/local/bin/android-studio
sudo vi /usr/share/applications/android-studio.desktop


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