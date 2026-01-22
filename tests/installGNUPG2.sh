#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGNUPG2"'
  installGNUPG2
  installHelloworld

  echo 'testing install done'