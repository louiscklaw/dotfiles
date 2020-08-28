#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installIntellij"'
  installIntellij
  installHelloworld

  echo 'testing install done'