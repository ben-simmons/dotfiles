# dotfiles

Made for mac and zsh.

Run `./symlink.sh` to update system dotfiles. 

Run `./brew.sh` to update homebrew packages.

Credentials and private things go into `.extra`.

## Setup

Run `git update-index --skip-worktree .gitconfig`.

Git is tracking this file, so we can't just add it to .gitignore, but we also
don't want it to always be marked as updated by the git config commands in `.extra`.
If you need to edit `.gitconfig` for a commit, then do this:

1. `git update-index --no-skip-worktree .gitconfig`
2. `git config user.name "YOUR_NAME" --local`
3. `git config user.email "YOUR_EMAIL" --local`