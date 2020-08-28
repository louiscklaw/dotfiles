#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installSpf13"'
  installSpf13
  installHelloworld

  echo 'testing install done'