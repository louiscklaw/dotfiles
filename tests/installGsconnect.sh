#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGsconnect"'
  installGsconnect
  installHelloworld

  echo 'testing install done'