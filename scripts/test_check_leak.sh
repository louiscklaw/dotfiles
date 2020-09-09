#!/usr/bin/env bash

set -e

TMP_DIR=$(mktemp -d)

rsync -avzh travis-check-leak/ $TMP_DIR

cd $TMP_DIR

  pipenv sync

  pipenv run python3 main.py $@

cd ..
