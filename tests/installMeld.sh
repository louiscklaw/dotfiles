#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installMeld"'
  installMeld
  installHelloworld

  echo 'testing install done'