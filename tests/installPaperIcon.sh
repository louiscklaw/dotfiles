#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installPaperIcon"'
  installPaperIcon
  installHelloworld

  echo 'testing install done'