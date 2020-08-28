#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installAliWangWang"'
  installAliWangWang
  installHelloworld

  echo 'testing install done'