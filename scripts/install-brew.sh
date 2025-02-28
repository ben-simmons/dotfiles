#!/usr/bin/env bash

## Install homebrew
#if test ! $(which brew)
#then
#  echo "Installing Homebrew for you."
#
#  # Install the correct homebrew for each OS type
#  if test "$(uname)" = "Darwin"
#  then
#    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
#  then
#    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
#  fi
#
#fi

brew analytics off

# Make sure we're using the latest homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-code-nerd-font

# Shells
brew install bash
brew install bash-completion
brew install zsh

brew install antigen

# General
brew install ag             # better ack (code search)
brew install bat            # better cat
brew install eza            # better ls
brew install fd             # better find (file search)
brew install htop           # better top
brew install httpie         # better curl
brew install imagemagick
brew install jq             # json
brew install kdiff3         # graphical diff / merge
brew install nano
brew install neofetch       # system info
brew install pygments       # syntax highlighter
brew install ripgrep        # faster grep
brew install shellcheck
brew install tldr           # simpler man pages
brew install tree
brew install vim
brew install watch
brew install wget
brew install yarn
brew install zoxide         # smarter cd

# Fuzzy Find
brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# Git
brew install git
brew install git-gui
brew install hub               # Github

# Python
brew install python
brew install pyenv

brew install poetry
poetry config virtualenvs.in-project true

brew install uv

# Database
brew install neo4j
brew install --cask neo4j
brew install postgresql@17
brew install sqlite

# Network
brew install mtr
brew install ngrep             # network grep
brew install nmap
brew install tcpdump           # packet analyzer
brew install tcptraceroute     # route
brew install wireshark         # tshark

# Cloud
brew install awscli            # AWS
brew install aws-sam-cli       # AWS Serverless Application Model
brew install azure-cli         # Azure
brew install --cask docker     # Docker
brew install doctl             # Digital Ocean
brew install google-cloud-sdk  # Google Cloud

# AI
brew install aider             # pair programming in your terminal
brew install ollama            # local LLMs

# Applications
brew install --cask cursor
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask omnigraffle
brew install --cask spotify
brew install --cask vlc
brew install --cask wireshark
