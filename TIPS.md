# Tips and Tricks

## Git

### Branches

* `ggo` to move between branches. Automatically creates a branch if it doesn't exist.
* `gpr` to pull with rebase.



### Committing and pushing

I generally want to commit every file I've added, deleted, or modified. Adding files to the index individually is a pain.
Therefore, I almost exclusively use `gacam` and `gacaa`.

* `gacam` - Add all files to index and commit with a message.
  * `gp` - Push.
* `gacaa` - Add all files to index and amend the last commit. Useful if I've missed something or need to make a quick change.
  * `gpf` - Force push (with lease). Must do this after amending. This is NOT a good idea if you're working with others,
but for my personal projects it doesn't matter.

### Stashing
* `gstsam` - Stash all changes with a message. Useful if I want to save my work but I'm not ready to commit anything, and
I need to switch to working on something else. Commonly used when I'm prototyping something and making a mess of everything
without any real structure to what I'm doing.
* `gstl` - List stash.
* `gstan` - Apply the nth stash, where n is 0-indexed.


## Mac

Shortcuts

| Action                    | Shortcut                        | Notes                                |
|:--------------------------|:--------------------------------|:-------------------------------------|
| Lock screen               | Ctrl + Cmd + Q                  |                                      |
| Search everywhere         | Cmd + Space                     | Spotlight Search                     |
| Switch window             | Ctrl + Left/Right               |                                      |
| Switch window             | Swipe left/right with 3 fingers |                                      |
| Switch window with select | Cmd + Tab (+ Left/Right)        |                                      |
| End of line               | Cmd + Right                     |                                      |
| Beginning of line         | Cmd + Left                      |                                      |
| Delete line               | Cmd + Delete                    |                                      |
| Mission Control           | Swipe up with 3 fingers         | Shows all open windows.              |
| AI prompt                 | Opt + Space                     | ChatGPT and Claude both map to this. | 


## Zoxide

Easily navigate to frequently accessed folders with fuzzy find.

You must first navigate to the folder using `z` instead of `cd` to add it to the zoxide database.

* `z` - Fuzzy find and navigate to a folder.
* `zi` - Interactive mode.

