#!/bin/bash

brew analytics off

# Make sure we're using the latest homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Shells
brew install bash
brew install zsh

# Python
brew install python
brew install pipenv
brew install pyenv
brew install pyenv-virtualenv

# Git
brew install git
brew install git-gui

# Everything else
brew install ag
brew install fzf
brew install imagemagick
brew install mtr
brew install tree
brew install vim
brew install wget
