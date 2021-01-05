# dotfiles

Made for mac and zsh.

Run `bin/symlink.sh` to update system dotfiles. 

Run `bin/brew.sh` to update homebrew packages.

Credentials and private things go into `.extra`.

## Setup

### Installing

Run `git update-index --skip-worktree .gitconfig`.

Git is tracking this file, so we can't just add it to .gitignore, but we also
don't want it to always be marked as updated by the git config commands in `.extra`.
If you need to edit `.gitconfig` for a commit, then do this:

1. `git update-index --no-skip-worktree .gitconfig`
2. `git config user.name "YOUR_NAME" --local`
3. `git config user.email "YOUR_EMAIL" --local`

### Customizing

Example `.extra`:

```bash
GIT_AUTHOR_NAME="YOUR_NAME"
GIT_AUTHOR_EMAIL="YOUR_EMAIL"
GH_USER="YOUR_GITHUB"

GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global github.user "$GH_USER"
```

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

## References

* [tomnomnom/dotfiles](https://github.com/tomnomnom/dotfiles)
* [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [lonetwin/pythonrc](https://github.com/lonetwin/pythonrc)