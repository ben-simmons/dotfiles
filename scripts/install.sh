#!/usr/bin/env bash

CWD="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"

source ${CWD}/install-brew.sh
source ${CMD}/install-node.sh
#source ${CWD}/install-sublime.sh
source ${CWD}/install-symlinks.sh

chsh -s $(brew --prefix)/bin/zsh
source ${HOME}/.zshrc

