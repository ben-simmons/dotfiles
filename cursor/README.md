# Cursor

https://www.cursor.com/

## Setup

### Exclude secrets from context

IMPORTANT when using AI code assistance with external LLMs.

See: https://docs.cursor.com/context/ignore-files

* Settings > Features > Explorer > Exclude Git Ignore
  * Check to enable
* Add patterns to `.cursorignore` file at project root.
```
**/.env*
**/*.env
!env.example
```
* This doesn't work, it was still excluding the `.env.example` file
  * Settings > Text Editor > Files > Exclude
    * Add Pattern: `**/.env*`
    * Add Pattern: `**/*.env`
    * Add Pattern: `!.env.example`
      * Keep `env.example`
    * In case you forget to include in `.gitignore`, or cursor doesn't index the gitignore files (possible in large projects).

### Auto Save

Turn on auto save:
* Settings > Text Editor > Files > Auto Save
  * Change to `onFocusChange`

## Shortcuts

| Action                        | Shortcut        | Notes                    |
|:------------------------------|:----------------|:-------------------------|
| Open project from folder      | Cmd + O         |                          |
| Open chat                     | Cmd + L         |                          |
| Open chat in code or terminal | Cmd + K         |                          |
| Open composer                 | Cmd + I         |                          |
| Open extensions               | Cmd + Shift + X |                          |
| Open file explorer            | Cmd + Shift + E |                          |
| Open keyboard shortcuts       | Cmd + R + S     |                          |
| Open terminal                 | Ctrl + ~        |                          |
| Open themes                   | Cmd + R + T     |                          |
| Search actions                | Cmd + Shift + P | Aka Open Command Palette |
| Search files                  | Cmd + P         |                          |
| Search code                   | Cmd + Shift + F |                          |
| Preview markdown              | Cmd + Shift + V |                          |


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
