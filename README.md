# dotfiles

Made for mac and zsh.

## Setup

### Installing

Run the main installer script:

```
bin/install.sh
```

Or just update the symlinks:

```
bin/install-symlink.sh
```

### Customizing

Put bashable secret stuff into `.extra`.

### Python

Made for homebrew and pyenv.

MacOS system python (python2) cannot be changed, and it's easiest to let homebrew install its own python (python3) for
its own package management. A clean way to get your shell to always refer to the specific python of your choice is with
pyenv. The idea is that your own programs will always refer to the version of python you specify with pyenv (which you
can specify globally or locally), regardless of whatever other python versions are installed on your system.

In other words:

* If you want your own scripts and projects to run specific versions of python, manage it via pyenv.
* If you want your homebrew tools to run a specific version of python, manage it via homebrew.
* All the other old and crusty stuff running on python2 can use the system python (`/usr/bin/python`).

Read more about [pyenv](https://github.com/pyenv/pyenv).

## TODOs

* Group config by program (zsh, iterm, vim) instead of by file type (script vs symlinkable dotfile).
* Robust bootstrapping script for a new machine.
* Ditch oh-my-zsh.

## References

* [tomnomnom/dotfiles](https://github.com/tomnomnom/dotfiles)
* [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [lonetwin/pythonrc](https://github.com/lonetwin/pythonrc)