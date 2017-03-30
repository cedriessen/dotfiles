#!/usr/bin/env bash

# If you experience compinit complaining like this
#   zsh compinit: insecure directories, run compaudit for list.
# run this script.
# See http://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories?answertab=votes#tab-top

cd /usr/local/share/
sudo chmod -R 755 zsh
sudo chown -R root:staff zsh
