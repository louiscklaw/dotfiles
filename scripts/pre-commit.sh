#!/usr/bin/env bash

set -e

PROJ_HOME=$PWD

# pre-commit check

# check_leak self check
yarn

scripts/test_check_leak.sh $PROJ_HOME

# done
