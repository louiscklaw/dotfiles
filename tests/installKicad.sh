#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installKicad"'
  installKicad
  installHelloworld

  echo 'testing install done'