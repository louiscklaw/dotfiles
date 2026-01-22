#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGnomeUtil"'
  installGnomeUtil
  installHelloworld

  echo 'testing install done'