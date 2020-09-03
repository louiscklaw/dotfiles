#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGhCli"'
  installGhCli
  installHelloworld

  echo 'testing install done'