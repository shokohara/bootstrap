#!/bin/bash -e
sudo apt-get update
sudo apt-get install -y git curl

sudo apt-get update
sudo apt-get install -y zsh
which zsh
chsh -s $(/usr/bin/zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --no-update-rc

git clone --depth 1 https://github.com/shokohara/dotfiles.git ~/dotfiles
git -C ~/dotfiles submodule init
git -C ~/dotfiles submodule update
~/dotfiles/deploy.sh

# pyenv Requirements
# https://github.com/pyenv/pyenv/wiki/Common-build-problems#requirements
sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

# need pyenv
git clone --depth 1 https://github.com/riywo/anyenv ~/.anyenv
source ~/.zshrc
anyenv install pyenv
latestVersion=`pyenv install --list | grep -e ' [0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; pyenv install $latestVersion; pyenv global $_
# reload
pip install powerline-status
