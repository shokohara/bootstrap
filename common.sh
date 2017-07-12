#!/bin/bash

ssh-keyscan github.com >> ~/.ssh/known_hosts
git clone git@github.com:shokohara/dotfiles.git ~/dotfiles
~/dotfiles/deploy.sh

git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes n | ~/.fzf/install

# Install tpm plugin

