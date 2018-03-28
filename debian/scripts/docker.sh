#!/bin/sh -eux

apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common;

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -;

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable";

apt-get update;
apt-get install -y docker-ce;

curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose;
chmod +x /usr/local/bin/docker-compose;

wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sudo -u vagrant sh;

usermod -aG docker vagrant;
