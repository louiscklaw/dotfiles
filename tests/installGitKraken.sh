#!/usr/bin/env bash

set -ex

cd /root
  source .louis_alias

  echo 'testing install "installGitKraken"'
  installGitKraken
  installHelloworld

  echo 'testing install done'