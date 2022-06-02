#!/usr/bin/env bash

set -ex

sudo dnf -y update
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -

sudo dnf install -y gcc-c++ make
sudo dnf install -y nodejs

node -v

