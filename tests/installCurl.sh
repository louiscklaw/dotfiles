#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installCurl"'
  installCurl
  installHelloworld

  echo 'testing install done'