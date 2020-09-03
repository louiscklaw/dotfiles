#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installAria2c"'
  installAria2c
  installHelloworld

  echo 'testing install done'