#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installTzdata"'
  installTzdata
  installHelloworld

  echo 'testing install done'