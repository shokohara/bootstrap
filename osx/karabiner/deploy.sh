#!/bin/sh
cd $(cd $(dirname $0);pwd)
cp private.xml $HOME/Library/Application\ Support/Karabiner

sh karabiner-import.sh
