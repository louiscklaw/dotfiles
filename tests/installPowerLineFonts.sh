#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installPowerLineFonts"'
  installPowerLineFonts
  installHelloworld

  echo 'testing install done'