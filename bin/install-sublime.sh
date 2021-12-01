#!/usr/bin/env bash

# Assume we're in the bin directory below dotfiles
CWD="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
settings_dir=${CWD}/../sublime

# https://github.com/CoreyMSchafer/dotfiles/blob/master/sublime.sh

# Create Sublime Text directories as they don't exist until Sublime is opened
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Install Custom Sublime Text sublime
cp -rv ${settings_dir}/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

