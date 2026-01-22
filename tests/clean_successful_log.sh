#!/usr/bin/env bash

set -ex

# nodemon --delay 100ms -w logs -e "log" --exec "tests/clean_successful_log.sh"

cd logs
for i in $(grep -rli "testing install done"); do
  rm -rf $i
done;