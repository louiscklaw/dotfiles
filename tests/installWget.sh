#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installWget"'
  installWget
  installHelloworld

  echo 'testing install done'