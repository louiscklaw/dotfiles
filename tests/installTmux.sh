#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installTmux"'
  installTmux
  installHelloworld

  echo 'testing install done'