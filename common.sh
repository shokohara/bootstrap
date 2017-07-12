#!/bin/bash
git config --global user.email "shokohara@users.noreply.github.com"
git config --global user.name "Sho Kohara"

git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes n | ~/.fzf/install

# Install tpm plugin

