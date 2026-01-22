#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installTilix"'
  installTilix
  installHelloworld

  echo 'testing install done'