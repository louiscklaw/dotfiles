#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installOpenWeather"'
  installOpenWeather
  installHelloworld

  echo 'testing install done'