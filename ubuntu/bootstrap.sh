#!/bin/sh
set -e
sudo apt-get update
sudo apt-get install -y git curl

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

git clone https://github.com/shokohara/dotfiles.git $HOME/dotfiles
$HOME/dotfiles/deploy.sh

# pyenv Requirements
# https://github.com/pyenv/pyenv/wiki/Common-build-problems#requirements
sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

# need pyenv
latestVersion=`pyenv install --list | grep -e ' [0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; pyenv install $latestVersion; pyenv global $_
# reload
pip install powerline-status
