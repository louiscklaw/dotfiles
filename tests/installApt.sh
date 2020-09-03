#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installApt"'
  installApt
  installHelloworld

  echo 'testing install done'