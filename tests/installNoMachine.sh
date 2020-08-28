#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installNoMachine"'
  installNoMachine
  installHelloworld

  echo 'testing install done'