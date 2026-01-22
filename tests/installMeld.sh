#!/usr/bin/env bash

set -ex

cd ~/_workspace/dotfiles
  source .louis_alias

  echo 'testing install "installMeld"'
  installMeld
  installHelloworld

  echo 'testing install done'