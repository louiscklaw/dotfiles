#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installVim"'
  installVim
  installHelloworld

  echo 'testing install done'