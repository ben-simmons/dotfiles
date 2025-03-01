# PyCharm

## Exclude secrets from context

IMPORTANT when using AI code assistance with external LLMs.

See https://docs.github.com/en/copilot/managing-copilot/configuring-and-auditing-content-exclusion/excluding-content-from-github-copilot.

Under discussion: [.copilotignore](https://github.com/orgs/community/discussions/10305)


## Shortcuts

I use a copy of the `Eclipse (macOS)` keymap with some customizations. Settings can
be [synced](https://www.jetbrains.com/help/pycharm/sharing-your-ide-settings.html) via your jetbrains account.

### Custom

| Action                       | Shortcut         | Notes                                                                                                                                       |
|:-----------------------------|:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------|
| Find                         | Cmd + F          |                                                                                                                                             |
| Find Action                  | Cmd + Shift + P  | Originally Cmd+Shift+A, changed because of a macos conflict. Cmd+Shift+P is the VS Code shortcut for the Command Palette, which is similar. |
| Go to Declaration or Usages  | Cmd + Click      |                                                                                                                                             |
| Python Console               | Ctrl + Shift + C |                                                                                                                                             |
| Run File in Python Console   | Ctrl + Shift + A |                                                                                                                                             |
| Replace                      | Ctrl + R         |                                                                                                                                             |

### Useful

| Action                                                            | Shortcut              | Notes                                                                                                           |
|:------------------------------------------------------------------|:----------------------|:----------------------------------------------------------------------------------------------------------------|
| Add or Remove Caret                                               | Opt + Click           | Useful for editing multiple lines.                                                                              |
| Close Tool Window                                                 | Cmd + Esc             | Panel that opens up on the bottom where run, debug, and other stuff are.                                        |
| Debug                                                             | Cmd + 5               |                                                                                                                 |
| File Structure                                                    | Cmd + F12             |                                                                                                                 |
| Find in Files                                                     | Ctrl + H              | Follow up with Alt + {P, M, D, S} to move through project, module, directory, and scope tabs.                   |
| Move Statement Up                                                 | Cmd + Shift + Up      |                                                                                                                 |
| Move Statement Down                                               | Cmd + Shift + Down    |                                                                                                                 |
| Navigate Back                                                     | Cmd + [               | Useful for returning after Cmd + Click.                                                                         |
| Navigate Forward                                                  | Cmd + ]               |                                                                                                                 |
| Preferences                                                       | Cmd + ,               |                                                                                                                 |
| Problems                                                          | Cmd + 6               |                                                                                                                 |
| Reformat File                                                     | Cmd + Shift + F       | I use this a ton for cleaning up code comments & markdown to auto-break the lines nicely into 120 char lengths. |
| Run                                                               | Cmd + 4               |                                                                                                                 |
| Search Everywhere                                                 | Shift + Shift         |                                                                                                                 |
| GitHub Copilot - Chat Panel                                       | Ctrl + Shift + C      |                                                                                                                 |
| GitHub Copilot - Inline Chat                                      | Ctrl + Shift + I      |                                                                                                                 |
| GitHub Copilot - Completions - Toggle completions                 | Opt + Shift + Cmd + O |                                                                                                                 |
| GitHub Copilot - Completions - Cycle forward through suggestions  | Opt + ]               |                                                                                                                 |
| GitHub Copilot - Completions - Cycle backward through suggestions | Opt + [               |                                                                                                                 |
| GitHub Copilot - Completions - Accept suggestion                  | Tab                   |                                                                                                                 |
| GitHub Copilot - Completions - Accept first word of suggestion    | Cmd + Right           |                                                                                                                 |
| GitHub Copilot - Completions - Accept first line of suggestion    | Ctrl + Cmd + Right    |                                                                                                                 |

## Theme

I generally like earthier themes.

Out of the box I use `Darcula`.

[Dark-Themes](https://plugins.jetbrains.com/plugin/18724-dark-themes):
* `Green Haze`
* `Gruvbox`
* `Gruvbox Concoctis`
* `Gruvbox Material`

Customizations:
* Warnings
  * Disable Foreground
  * Disable Background
  * Disable Error stripe mark
  * Disable Effects
