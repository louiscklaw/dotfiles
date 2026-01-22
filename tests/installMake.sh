#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installMake"'
  installMake
  installHelloworld

  echo 'testing install done'