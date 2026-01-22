#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installScreenSaver"'
  installScreenSaver
  installHelloworld

  echo 'testing install done'