#!/bin/bash

CWD="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"

source ${CWD}/install-brew.sh
source ${CWD}/install-sublime.sh
source ${CWD}/install-symlink.sh

source ${HOME}/.zshrc
