#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installAndroidStudio"'
  installAndroidStudio
  installHelloworld

  echo 'testing install done'