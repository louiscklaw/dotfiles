# FROM ubuntu:latest
FROM ubuntudesktop/gnome-3-28-1804

# Set default user and workdir
USER root
WORKDIR /

# Set DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive


RUN sed -i 's/http:\/\/archive\.ubuntu\.com/http:\/\/ftp\.cuhk\.edu\.hk\/pub\/Linux/g' /etc/apt/sources.list && \
  sed -i 's/http:\/\/security\.ubuntu\.com/http:\/\/ftp\.cuhk\.edu\.hk\/pub\/Linux/g' /etc/apt/sources.list


RUN apt-get update && \
  apt-get install -y zsh sudo

COPY ./.louis_alias /root/.louis_alias
# COPY ./tests/test-inside-docker.sh /test-inside-docker.sh

COPY ./.common.rc /root/_workspace/dotfiles/.common.rc
COPY ./.develop.rc /root/_workspace/dotfiles/.develop.rc
COPY ./.directory.rc /root/_workspace/dotfiles/.directory.rc
COPY ./.docker.rc /root/_workspace/dotfiles/.docker.rc
COPY ./.drone.rc /root/_workspace/dotfiles/.drone.rc
COPY ./.electronic.rc /root/_workspace/dotfiles/.electronic.rc
COPY ./.fabric.rc /root/_workspace/dotfiles/.fabric.rc
COPY ./.firewall.rc /root/_workspace/dotfiles/.firewall.rc
COPY ./.gnome-ext.rc /root/_workspace/dotfiles/.gnome-ext.rc
COPY ./.install.rc /root/_workspace/dotfiles/.install.rc
COPY ./.js.rc /root/_workspace/dotfiles/.js.rc
COPY ./.openssh.rc /root/_workspace/dotfiles/.openssh.rc
COPY ./.password.rc /root/_workspace/dotfiles/.password.rc
COPY ./.raspi.rc /root/_workspace/dotfiles/.raspi.rc
COPY ./.songlist.rc /root/_workspace/dotfiles/.songlist.rc
COPY ./.ssh_alias.rc /root/_workspace/dotfiles/.ssh_alias.rc
COPY ./.sshrc /root/_workspace/dotfiles/.sshrc
COPY ./.sshrc.d /root/_workspace/dotfiles/.sshrc.d
COPY ./.travis.rc /root/_workspace/dotfiles/.travis.rc

COPY ./my_config /root/_workspace/dotfiles/my_config

COPY ./tests /

RUN chmod +x /*.sh

# Run zsh
CMD ["/bin/zsh"]
