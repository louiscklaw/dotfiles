
#!/usr/bin/env bash

set -ex

docker run -t logickee/ubuntu-1804-zsh /installGhCli.sh | tee logs/docker_installGhCli.log