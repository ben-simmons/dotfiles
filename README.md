# dotfiles

Made for mac and zsh.




## Private Config

Put private shell stuff into `.zshrc_local`.

Put private git config into `.gitconfig_local`.




## Installing

Run the main installer script:

```bash
scripts/install.sh
```

Or just update the symlinks:

```bash
scripts/install-symlinks.sh
```

Note that `install-node.sh` intentionally does not overlap with `install-brew.sh`, even though those tools all have homebrew packages.
Install any node-based tools globally using npm, managed by nvm, instead of using homebrew.



## Post Install

### iTerm2

Link your iTerm2 profile:

1. Open iTerm2
2. Select iTerm2 > Settings
3. Under the General tab, check the box labeled "Load preferences from a custom folder or URL".
    1. Note: if you select an empty folder, it will export your current preferences into that folder.
4. Point it to `~/dotfiles/iterm2/com.googlecode.iterm2.plist`.

Install Shell Integration:

1. Only need to do this the first time, or if there's an update to the scripts. I've copied the outputs to [iterm2/shell_integration](./iterm2/shell_integration) and symlinked.
2. iTerm2 > Install Shell Integration.




## Shell

I'm using [antigen](https://github.com/zsh-users/antigen) to manage zsh plugins because it feels cleaner
than [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).

For the theme I'm using [powerlevel10k](https://github.com/romkatv/powerlevel10k), which is quite fast, slick, and has a really nice configuration script.
I've configured it to use the Pure style, and I like using the [Snazzy](https://github.com/sindresorhus/iterm2-snazzy)
iTerm2 theme with Fira Code Nerd fonts.

Iterm shell integration allows iterm to read your shell output. A useful shortcut is `Cmd+Shift+A`, which copies the last
shell output. Useful for chaining commands.




## Custom Commands

For custom shell commands, add your bash files to the [.local/bin](.local/bin) folder.

The [install-symlinks.sh](scripts/install-symlinks.sh) script links them, and [.zshrc](.zshrc) puts `~/.local/bin` on the `$PATH`. 

## AI

Setup:

1. Open iTerm2 > Settings > General > AI.
2. Install plugin.
3. Click "Enable generative AI feature"
4. Add your OpenAI API key.
   * https://platform.openai.com/api-keys
5. Also export it as `OPEN_API_KEY` in `.zshrc_local` for use with the `openai` custom command.

To use:

1. Open composer view with `Cmd+Shift+.`
2. Write prompt.
3. Submit prompt with `Cmd+Y`.
4. Run composed command with `Shift+Return`.
   * NOTE: This will exit the composer view and RUN its contents in the shell.
   * Exit with `Esc` if you don't want to run the contents of composer view (the generated command).




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

Installation:

1. Manually lookup latest python version number.
2. Run these commands:

```bash
# choose latest version
pyenv install X.X.X

# set latest version to be the global default
pyenv global X.X.X

# verify it worked
pyenv version
```

Virtualenvs:

Use `poetry` to manage virtualenvs.

I've configured poetry to make virtual envs in-project.




## Postgres

Start database cluster:

```brew services start postgresql@17```

Connect to default database:

```psql postgres```




## TODOs

* Switch to [this dotfiles system](https://www.atlassian.com/git/tutorials/dotfiles) where you use a bare git repo with
  work-tree set to `$HOME`? Looks like it eliminates the work of copying dotfiles into your repo and symlinking back
  to `$HOME`.
* How to use pyenv with venv?
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
