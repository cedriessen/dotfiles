#!/usr/bin/env bash

# https://stackoverflow.com/questions/16432071/how-to-fix-homebrew-permissions

sudo chown -R "$USER":admin /usr/local
sudo chown -R "$USER":admin /Library/Caches/Homebrew
