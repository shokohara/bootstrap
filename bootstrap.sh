#!/bin/sh
set -e
sudo apt-get update
sudo apt-get install -y git curl

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

git clone https://github.com/shokohara/bootstrap-ubuntu.git $HOME/dotfiles
$HOME/dotfiles/deploy.sh
