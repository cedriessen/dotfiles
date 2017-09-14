#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Check for Homebrew and install it if missing
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

apps=(
  activemq
  bnd
  ccrypt
  curl
  docker
  docker-compose
  docker-machine
  elixir
  ffmpeg
  git
  htop
  maven
  sbt
  scala
  smartmontools
  typesafe-activator
  wget
  zplug
  zsh

)

brew install "${apps[@]}"

osx_apps=(
  java
  virtualbox
  jetbrains-toolbox
  evernote
  1password
  spectacle

  # QuickLook plugins
  betterzipql
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  suspicious-package
  webpquicklook
)

brew cask install "${osx_apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
