#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installSsh"'
  installSsh
  installHelloworld

  echo 'testing install done'