#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installCode"'
  installCode
  installHelloworld

  echo 'testing install done'