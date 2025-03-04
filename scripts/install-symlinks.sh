#!/usr/bin/env bash

# Assume we're in the scripts directory below dotfiles
CWD="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
dotfiles_dir=${CWD}/..

# Link function originally from https://github.com/tomnomnom/dotfiles/blob/master/setup.sh
function link_dotfile {
  dest="${HOME}/${2}"
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
  ln -sv ${dotfiles_dir}/${1} ${dest}
}

# iterm
link_dotfile iterm2/shell_integration/.iterm2 .iterm2
link_dotfile iterm2/shell_integration/.iterm2_shell_integration.zsh .iterm2_shell_integration.zsh

# shell
link_dotfile .aliases .aliases
link_dotfile .exports .exports
link_dotfile .functions .functions
link_dotfile .fzf.zsh .fzf.zsh
link_dotfile .p10k.zsh .p10k.zsh
link_dotfile .zshrc .zshrc
link_dotfile .zshrc_local .zshrc_local
link_dotfile .zprofile .zprofile

# python
link_dotfile .pythonrc.py .pythonrc.py

# git
link_dotfile .gitconfig .gitconfig
link_dotfile .gitconfig_local .gitconfig_local
link_dotfile .gitignore_global .gitignore_global

# openhands
link_dotfile openhands/openhands.sh .openhands.sh

# stacks
link_dotfile stacks .stacks

# custom commands
mkdir -p "${HOME}/.local"
link_dotfile bin .local/bin
