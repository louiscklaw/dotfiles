#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGit"'
  installGit
  installHelloworld

  echo 'testing install done'