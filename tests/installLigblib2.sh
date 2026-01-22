#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installLigblib2"'
  installLigblib2
  installHelloworld

  echo 'testing install done'