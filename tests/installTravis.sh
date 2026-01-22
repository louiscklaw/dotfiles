#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installTravis"'
  installTravis
  installHelloworld

  echo 'testing install done'