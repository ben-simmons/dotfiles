#!/bin/bash

# References:
# https://github.com/paulirish/dotfiles/blob/master/brew.sh

brew analytics off

# Make sure we're using the latest homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install bash
brew install zsh

brew install ag
brew install git
brew install git-gui
brew install imagemagick
brew install mtr
brew install tree
brew install vim
brew install wget

brew install python
brew install pipenv

# brew install postgresql