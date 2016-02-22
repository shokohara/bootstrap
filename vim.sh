#!/bin/bash
sudo apt-get update
sudo apt-get -y install vim vim-gtk vim-athena vim-gnome
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
