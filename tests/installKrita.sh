#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installKrita"'
  installKrita
  installHelloworld

  echo 'testing install done'