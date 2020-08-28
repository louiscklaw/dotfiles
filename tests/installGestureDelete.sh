#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGestureDelete"'
  installGestureDelete
  installHelloworld

  echo 'testing install done'