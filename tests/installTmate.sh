#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installTmate"'
  installTmate
  installHelloworld

  echo 'testing install done'