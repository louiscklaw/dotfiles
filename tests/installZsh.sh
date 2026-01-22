#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installZsh"'
  installZsh
  installHelloworld

  echo 'testing install done'