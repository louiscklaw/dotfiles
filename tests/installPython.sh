#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installPython"'
  installPython
  installHelloworld

  echo 'testing install done'