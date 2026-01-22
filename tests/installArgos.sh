#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installArgos"'
  installArgos
  installHelloworld

  echo 'testing install done'