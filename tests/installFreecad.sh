#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installFreecad"'
  installFreecad
  installHelloworld

  echo 'testing install done'