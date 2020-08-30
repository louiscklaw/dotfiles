#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installUnzip"'
  installUnzip
  installHelloworld

  echo 'testing install done'