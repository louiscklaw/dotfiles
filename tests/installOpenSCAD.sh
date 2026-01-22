#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installOpenSCAD"'
  installOpenSCAD
  installHelloworld

  echo 'testing install done'