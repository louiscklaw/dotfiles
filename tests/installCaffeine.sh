#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installCaffeine"'
  installCaffeine
  installHelloworld

  echo 'testing install done'