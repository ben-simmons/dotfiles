#!/bin/bash

dotfiles_dir=$(pwd)

# link function from https://github.com/tomnomnom/dotfiles/blob/master/setup.sh
function link_dotfile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfiles_dir}/${1} ${dest}
}

link_dotfile .aliases
link_dotfile .exports
link_dotfile .extra
link_dotfile .gitconfig
link_dotfile .pythonrc
link_dotfile .zshrc
