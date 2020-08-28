#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installNautilus"'
  installNautilus
  installHelloworld

  echo 'testing install done'