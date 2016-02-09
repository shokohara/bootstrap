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
