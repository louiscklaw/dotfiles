#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installCUHKUbuntuRepo"'
  installCUHKUbuntuRepo
  installHelloworld

  echo 'testing install done'