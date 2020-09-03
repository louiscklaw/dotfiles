
#!/usr/bin/env bash

set -ex

docker run -t logickee/ubuntu-1804-zsh /installNmap.sh | tee logs/docker_installNmap.log
docker run -t logickee/ubuntu-1804-zsh /installMitmProxy.sh | tee logs/docker_installMitmProxy.log
