#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installDockerCompose"'
  installDockerCompose
  installHelloworld

  echo 'testing install done'