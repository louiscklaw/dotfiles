#!/usr/bin/env bash


# http://coldattic.info/post/7/

set -ex

docker build -t logickee/ubuntu-1804-zsh .

cat tests/full_docker_commands.sh | while read i; do printf "%q\n" "$i"; done | xargs --max-procs=99 -I CMD bash -c CMD