#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installHelloworld"'
  installHelloworld
  installHelloworld

  echo 'testing install done'