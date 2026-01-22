#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installFranz"'
  installFranz
  installHelloworld

  echo 'testing install done'