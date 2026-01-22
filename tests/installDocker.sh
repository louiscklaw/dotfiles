#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installDocker"'
  installDocker
  installHelloworld

  echo 'testing install done'