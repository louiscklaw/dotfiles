#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installChinese"'
  installChinese
  installHelloworld

  echo 'testing install done'