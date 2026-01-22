#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installNgrok"'
  installNgrok
  installHelloworld

  echo 'testing install done'