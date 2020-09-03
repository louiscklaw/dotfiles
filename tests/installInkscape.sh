#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installInkscape"'
  installInkscape
  installHelloworld

  echo 'testing install done'