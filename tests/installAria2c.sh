#!/usr/bin/env bash

set -ex

cd ~/_workspace/dotfiles
  source .louis_alias

  echo 'testing install "installAria2c"'
  installAria2c
  installHelloworld

  echo 'testing install done'