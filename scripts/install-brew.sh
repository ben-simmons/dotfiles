#!/usr/bin/env bash

CWD="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"

# Install homebrew if not installed
if ! command -v brew &> /dev/null; then
  echo "Installing homebrew..."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

brew analytics off

# Install homebrew packages
"${CWD}/install-brew-packages.sh"
