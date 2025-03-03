# Cursor

https://www.cursor.com/

## Setup

### Exclude secrets from context

IMPORTANT when using AI code assistance with external LLMs.

See: https://docs.cursor.com/context/ignore-files

Preferred method:

* Add files to `.cursorignore` at project root directory.
```
**/.env*
**/*.env
!env.example
```
* Once you do, when you hover over a file in the file explorer you'll see "AI features disabled (File in .cursorignore)".

Other methods:
* Settings > Features > Explorer > Exclude Git Ignore
  * This will exclude git-ignored files from the project, but these files may also be useful to see in the editor.
  * I generally keep them included.
* Settings > Text Editor > Files > Exclude
  * Add Pattern: `**/.env*`
  * Add Pattern: `**/*.env`
  * Add Pattern: `!.env.example`
    * Keep `env.example`
    * Note: This doesn't work, it was still excluding the `.env.example` file
  * In case you forget to include in `.gitignore`, or cursor doesn't index the gitignore files (possible in large projects).

### Auto Save

Turn on auto save:
* Settings > Text Editor > Files > Auto Save
  * Change to `onFocusChange`

## Shortcuts

| Action                        | Shortcut             | Notes                    |
|:------------------------------|:---------------------|:-------------------------|
| Cycle through open tabs       | Cmd + Shift + ] or [ |                          |
| Open project from folder      | Cmd + O              |                          |
| Open chat                     | Cmd + L              |                          |
| Open chat in code or terminal | Cmd + K              |                          |
| Open composer                 | Cmd + I              |                          |
| Open extensions               | Cmd + Shift + X      |                          |
| Open file explorer            | Cmd + Shift + E      |                          |
| Open keyboard shortcuts       | Cmd + R + S          |                          |
| Open terminal                 | Ctrl + ~             |                          |
| Open themes                   | Cmd + R + T          |                          |
| Search actions                | Cmd + Shift + P      | Aka Open Command Palette |
| Search files                  | Cmd + P              |                          |
| Search code                   | Cmd + Shift + F      |                          |
| Preview markdown              | Cmd + Shift + V      |                          |


## Theme

I like:
* [Jetbrains Dark Theme](https://marketplace.visualstudio.com/items?itemName=MoBalic.jetbrains-dark-theme), which is basically Jetbrains' `Darcula` but on the Visual Studio marketplace.
* Gruvbox Material Dark


## Tips

In chat:
* Type `@Codebase` to include your entire project in the context of the conversation.
* Type `@directory_name`, e.g. `@scripts`, to include a specific directory in the context. 

Add external code docs into the context:
* Cursor -> Settings -> Cursor Settings -> Features -> Docs -> Add new doc
* Will auto-create a tag for the docs, e.g. `@Crawl4AI` for docs.crawl4ai.com
