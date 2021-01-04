#!/usr/bin/env bash

set -ex

THIS_HOSTNAME=`hostname`
FILENAME=$THIS_HOSTNAME+'.apt.list'

echo 'hostname' > list-apt/$FILENAME

hostname >> list-apt/$FILENAME

apt list --installed >> list-apt/$FILENAME

echo 'done'