#!/usr/bin/env bash

set -ex

sudo apt install -y openssh-server
sudo systemctl status ssh
sudo ufw allow ssh
