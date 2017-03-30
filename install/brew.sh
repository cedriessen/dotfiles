#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/core
brew tap homebrew/dupes
brew tap homebrew/science
brew tap caskroom/cask
brew tap jenv/jenv

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

apps=(
  git
  docker
  docker-compose
  docker-machine
  elixir
  htop
  activemq
  zsh
  zplug
  ffmpeg
  wget
  curl
  ccrypt
)

brew install "${apps[@]}"

osx_apps=(
  virtualbox
  # QuickLook plugins
  qlcolorcode
  qlstephen
  qlmarkdown
  quicklook-json
  qlprettypatch
  quicklook-csv
  betterzipql
  qlimagesize
  webpquicklook
  suspicious-package
)

brew cask install "${osx_apps[@]}"


# Remove outdated versions from the cellar
brew cleanup
