#!/usr/bin/env bash

# Make sure we're using the latest homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Fonts
brew install font-fira-code
brew install font-fira-code-nerd-font

# Shells
brew install bash
brew install bash-completion
brew install zsh

brew install antigen

# General
brew install ag             # better ack (code search)
brew install asitop         # performance monitor for Apple Silicon
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
if ! command -v fzf &> /dev/null; then
  brew install fzf
  # Install useful key bindings and fuzzy completion
  $(brew --prefix)/opt/fzf/install
fi

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
# brew install postgresql@17
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
brew install doctl             # Digital Ocean
brew install google-cloud-sdk  # Google Cloud

# AI
brew install aider             # pair programming in your terminal

# Applications
brew install --cask cursor
brew install --cask docker     # includes cli (docker)
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask neo4j
brew install --caks lm-studio  # includes cli (lms)
brew install --cask ollama     # includes cli (ollama)
brew install --cask omnigraffle
brew install --cask spotify
brew install --cask sublime-text
brew install --cask vlc
brew install --cask wireshark
