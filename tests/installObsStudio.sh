#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installObsStudio"'
  installObsStudio
  installHelloworld

  echo 'testing install done'