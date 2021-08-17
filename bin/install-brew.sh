#!/usr/bin/env bash

# Install homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

brew analytics off

# Make sure we're using the latest homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Shells
brew install bash
brew install zsh
brew install antigen

# Python
brew install python
brew install pipenv
brew install pyenv
brew install pyenv-virtualenv

# Git
brew install git
brew install git-gui

# AWS
brew tap aws/tap
brew install awscli
brew install aws-sam-cli

# Other tools
brew install ag
brew install fzf
brew install imagemagick
brew install mtr
brew install pygments
brew install tree
brew install vim
brew install wget
brew install yarn
brew install zoxide

# Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-code-nerd-font

# Casks
brew install --cask graphql-playground
