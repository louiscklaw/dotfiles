#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installSynergy"'
  installSynergy
  installHelloworld

  echo 'testing install done'