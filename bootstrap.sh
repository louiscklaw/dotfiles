#!/usr/bin/env ash

set -ex

opkg update
opkg install git
opkg install openssh-client openssh-keygen
opkg install tmux

git clone -b openwrt --depth=1 git@github.com:louiscklaw/dotfiles.git

