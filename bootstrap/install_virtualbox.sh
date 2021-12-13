#!/usr/bin/env bash

set -ex

export DEBIAN_FRONTEND=noninteractive

sudo rm -rf /etc/apt/sources.list.d/virtualbox.list || true

sudo apt-get update
sudo apt-get install -y virtualbox virtualbox-ext-pack
