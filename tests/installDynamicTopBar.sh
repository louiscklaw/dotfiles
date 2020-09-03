#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installDynamicTopBar"'
  installDynamicTopBar
  installHelloworld

  echo 'testing install done'