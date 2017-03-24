#!/bin/sh
set -e
sudo apt-get update
sudo apt-get install -y git curl

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

git clone https://github.com/shokohara/bootstrap-ubuntu.git $HOME/dotfiles
$HOME/dotfiles/deploy.sh

# pyenv Requirements
# https://github.com/pyenv/pyenv/wiki/Common-build-problems#requirements
sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils
