#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installNetworkManager"'
  installNetworkManager
  installHelloworld

  echo 'testing install done'