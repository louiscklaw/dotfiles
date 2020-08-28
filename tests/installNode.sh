#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installNode"'
  installNode
  installHelloworld

  echo 'testing install done'