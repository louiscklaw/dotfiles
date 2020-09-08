
#!/usr/bin/env bash

set -ex

docker run -t logickee/ubuntu-1804-zsh /installZsh.sh | tee logs/docker_installZsh.log
