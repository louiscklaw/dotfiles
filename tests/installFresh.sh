#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installFresh"'
  installFresh
  installHelloworld

  echo 'testing install done'