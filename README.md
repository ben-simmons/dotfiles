# dotfiles

Made for mac and zsh.

## Customizing

Put private shell stuff into `.zshrc_local`.

Put private git config into `.gitconfig_local`.

## Installing

Run the main installer script:

```
bin/install.sh
```

Or just update the symlinks:

```
bin/install-symlink.sh
```

## Post Install

### iTerm2

Link your iTerm2 profile:

1. Open iTerm2
2. Select iTerm2 > Preferences
3. Under the General tab, check the box labeled "Load preferences from a custom folder or URL".
    1. Note: if you select an empty folder, it will export your current preferences into that folder.
4. Point it to `~/dotfiles/iterm/com.googlecode.iterm2.plist`.

## Shell

I'm using [antigen](https://github.com/zsh-users/antigen) to manage zsh plugins because it feels cleaner
than [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).

For the theme I'm using [powerlevel10k](https://github.com/romkatv/powerlevel10k), which is quite fast, slick, and has a
really nice configuration script. I like using p10k with the [Snazzy](https://github.com/sindresorhus/iterm2-snazzy)
color scheme and Fira Code Nerd fonts.

## Python

I'm using [pyenv](https://github.com/pyenv/pyenv) instead of homebrew for python version management.

MacOS system python (python2) cannot be changed, and it's easiest to let homebrew install its own python (python3) for
its own package management. A clean way to get your shell to always refer to the specific python of your choice is with
pyenv. The idea is that your own programs will always refer to the version of python you specify with pyenv (which you
can specify globally or locally), regardless of whatever other python versions are installed on your system.

In other words:

* If you want your own scripts and projects to run specific versions of python, manage it via pyenv.
* If you want your homebrew tools to run a specific version of python, manage it via homebrew.
* All the other old and crusty stuff running on python2 can use the system python (`/usr/bin/python`).

## TODOs

* Fix line with `%` on iterm startup (does not occur after startup even when opening new window/tab/pane).
* Switch to [this dotfiles system](https://www.atlassian.com/git/tutorials/dotfiles) where you use a bare git repo with
  work-tree set to `$HOME`? Looks like it eliminates the work of copying dotfiles into your repo and symlinking back
  to `$HOME`.
* Learn workflow with vim and tmux.
* Robust bootstrapping script for a new machine.
    * Comprehensive mac setup: https://github.com/ptb/mac-setup
    * Cask everything: https://piratefache.ch/update-all-your-mac-apps-in-one-command-line/
* Complete readme (good example: https://github.com/joshukraine/dotfiles)
* Group config by program (zsh, iterm, vim) instead of by file type (script vs symlinkable dotfile).

## References

* [tomnomnom/dotfiles](https://github.com/tomnomnom/dotfiles)
* [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [lonetwin/pythonrc](https://github.com/lonetwin/pythonrc)
* [denysdovhan/dotfiles](https://github.com/denysdovhan/dotfiles) - creator of spaceship zsh theme
