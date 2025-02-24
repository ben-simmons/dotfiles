# Tips and Tricks

## Git

I generally want to commit every file I've added, deleted, or modified. Adding files to the index individually is a pain.
Therefore, I almost exclusively use `gacam` and `gacaa`.

Committing and pushing:
* `gacam` - Add all files to index and commit with a message.
  * `gp` - Push.
* `gacaa` - Add all files to index and amend the last commit. Useful if I've missed something or need to make a quick change.
  * `gpf` - Force push (with lease). Must do this after amending. This is NOT a good idea if you're working with others,
but for my personal projects it doesn't matter.

Stashing:
* `gstsam` - Stash all changes with a message. Useful if I want to save my work but I'm not ready to commit anything, and
I need to switch to working on something else. Commonly used when I'm prototyping something and making a mess of everything
without any real structure to what I'm doing.
* `gstl` - List stash.
* `gstan` - Apply the nth stash, where n is 0-indexed.

## Zoxide

Easily navigate to frequently accessed folders with fuzzy find.

You must first navigate to the folder using `z` instead of `cd` to add it to the zoxide database.

* `z` - Fuzzy find and navigate to a folder.
* `zi` - Interactive mode.

