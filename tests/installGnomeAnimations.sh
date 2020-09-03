#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGnomeAnimations"'
  installGnomeAnimations
  installHelloworld

  echo 'testing install done'