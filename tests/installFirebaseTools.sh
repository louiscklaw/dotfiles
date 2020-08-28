#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installFirebaseTools"'
  installFirebaseTools
  installHelloworld

  echo 'testing install done'