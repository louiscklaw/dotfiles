#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installLaCapitaine"'
  installLaCapitaine
  installHelloworld

  echo 'testing install done'