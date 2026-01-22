#!/usr/bin/env bash

set -ex

python3 tests/gen-test-sh.py &
python3 tests/gen-travis-yml.py &
# python3 tests/gen-full-docker-commands.py &

chmod +x tests/*.sh

wait
