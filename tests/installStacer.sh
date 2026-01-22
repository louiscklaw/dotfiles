#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installStacer"'
  installStacer
  installHelloworld

  echo 'testing install done'