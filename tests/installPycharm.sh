#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installPycharm"'
  installPycharm
  installHelloworld

  echo 'testing install done'