#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installLibreoffice"'
  installLibreoffice
  installHelloworld

  echo 'testing install done'