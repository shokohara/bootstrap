#!/bin/bash

git clone https://github.com/riywo/anyenv ~/.anyenv

$HOME/.anyenv/bin/anyenv install rbenv
$HOME/.anyenv/bin/anyenv install pyenv
$HOME/.anyenv/bin/anyenv install ndenv

for i in `$HOME/.anyenv/envs/rbenv/bin/rbenv install -l`; do $HOME/.anyenv/envs/rbenv/bin/rbenv install $i; done
for i in `$HOME/.anyenv/envs/pyenv/bin/pyenv install -l`; do $HOME/.anyenv/envs/pyenv/bin/pyenv install $i; done
for i in `$HOME/.anyenv/envs/ndenv/bin/ndenv install -l`; do $HOME/.anyenv/envs/ndenv/bin/ndenv install $i; done
latestVersion=`pyenv install --list | grep -e ' [0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; pyenv install $latestVersion; pyenv global $_
latestVersion=`ndenv install --list | grep -e ' v[0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; ndenv install $latestVersion; ndenv global $_

