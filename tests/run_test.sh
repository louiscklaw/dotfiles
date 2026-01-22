#!/usr/bin/env bash


# http://coldattic.info/post/7/

set -ex

# docker kill $(docker ps -qa)

docker container prune -f

docker build -t logickee/ubuntu-1804-zsh .

rm -rf /home/logic/_workspace/dotfiles/logs/*.log

cat tests/full_docker_commands.sh | while read i; do printf "%q\n" "$i"; done | xargs --max-procs=30 -I CMD bash -c CMD

echo "---------------------------------"
echo " test done and  prune containers "
echo "---------------------------------"

docker container prune -f
