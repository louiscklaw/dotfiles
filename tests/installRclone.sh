#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installRclone"'
  installRclone
  installHelloworld

  echo 'testing install done'