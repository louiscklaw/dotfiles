#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installYarn"'
  installYarn
  installHelloworld

  echo 'testing install done'