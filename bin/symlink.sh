#!/bin/bash

# Assume we're in the bin directory below dotfiles
CWD="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
dotfiles_dir=${CWD}/..

# link function from https://github.com/tomnomnom/dotfiles/blob/master/setup.sh
function link_dotfile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h "${dest}" ]; then
    # Existing symlink 
    # echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    # echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    # echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  # echo "Creating new symlink: ${dest}"
  ln -sv ${dotfiles_dir}/${2} ${dest}
}

link_dotfile .aliases .aliases
link_dotfile .exports .exports
link_dotfile .extra .extra
link_dotfile .functions .functions
link_dotfile .gitconfig .gitconfig
link_dotfile .gitignore gitignore
link_dotfile .pythonrc pythonrc.py
link_dotfile .zshrc .zshrc
