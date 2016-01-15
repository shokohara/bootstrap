#!/bin/bash
sudo apt-get update
sudo apt-get install -y vim
cd ~ && git clone git@github.com:skohar/dotfiles.git && cd ~/dotfiles && make && cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
