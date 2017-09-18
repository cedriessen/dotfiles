#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Check for Homebrew and install it if missing
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/bundle
brew bundle
