#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installMagicWormHole"'
  installMagicWormHole
  installHelloworld

  echo 'testing install done'