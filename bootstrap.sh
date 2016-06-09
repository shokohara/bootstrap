#!/bin/sh
set -e
sudo apt-get update
sudo apt-get install -y git curl
git clone https://github.com/shokohara/bootstrap-ubuntu.git $HOME/dotfiles
$HOME/dotfiles/deploy.sh
