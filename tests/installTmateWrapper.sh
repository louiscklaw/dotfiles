#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installTmateWrapper"'
  installTmateWrapper
  installHelloworld

  echo 'testing install done'