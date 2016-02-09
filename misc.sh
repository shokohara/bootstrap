#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew

mkdir $HOME/bin
curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt

sudo apt-get install -y openjdk-8-jdk

wget https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_linux_amd64.zip
sudo apt-get install -y unzip
unzip packer_0.8.6_linux_amd64.zip -d ~/bin

sudo bash -c 'echo "deb http://repo.pritunl.com/stable/apt wily main" >> /etc/apt/sources.list.d/pritunl.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv CF8E292A
sudo apt-get update
sudo apt-get install -y pritunl-client

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo apt-get install -y postgresql-client

curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli

sudo apt-get install -y python-dev
sudo pip install ansible

curl -L git.io/nodebrew | perl - setup
$HOME/.nodebrew/current/bin/nodebrew install-binary 4.2.6
