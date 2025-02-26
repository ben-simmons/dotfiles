# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###############################################################################
# Antigen                                                                     #
###############################################################################
source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen theme romkatv/powerlevel10k

antigen bundle colorize
antigen bundle colored-man-pages
antigen bundle git
antigen bundle osx
antigen bundle web-search
antigen bundle Aloxaf/fzf-tab

# zsh improvements
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle hlissner/zsh-autopair

# Speed up pasting
# https://github.com/romkatv/powerlevel10k/issues/568
# https://github.com/ohmyzsh/ohmyzsh/issues/5569
# Must be exported before oh-my-zsh is sourced to be effective
# (i.e. before antigen apply)
export DISABLE_MAGIC_FUNCTIONS=true

antigen apply

###############################################################################
# iTerm2                                                                      #
###############################################################################
# Shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

###############################################################################
# Powerlevel10k                                                               #
###############################################################################
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############################################################################
# Dotfiles                                                                    #
###############################################################################
# Source my shell files
for file in ~/.{aliases,functions,exports,zshrc_local}; do
  if [[ -r "$file" ]] && [[ -f "$file" ]]; then
    source "$file"
  fi
done
unset file

# Put all the custom commands in PATH
export PATH=~/.local/bin:$PATH

###############################################################################
# Bind keys                                                                   #
###############################################################################
bindkey '\e\e[C' forward-word   # [Alt-RightArrow] (\e removes beeps)
bindkey '\e\e[D' backward-word  # [Alt-LeftArrow] (\e removes beeps)

###############################################################################
# FZF                                                                         #
###############################################################################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://github.com/junegunn/fzf#usage
#export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Use ripgrep instead of grep
# https://www.hschne.at/2020/04/25/creating-a-fuzzy-shell-with-fzf-and-friends.html
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

###############################################################################
# zoxide                                                                      #
###############################################################################
eval "$(zoxide init zsh)"

###############################################################################
# nvm                                                                         #
###############################################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###############################################################################
# pyenv                                                                       #
###############################################################################
export PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

###############################################################################
# Autocompletion                                                              #
###############################################################################
# Include hidden files in autocompletion
setopt globdots

# bash completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# zsh completions
#if type brew &>/dev/null; then
#  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#
#  autoload -Uz compinit
#  compinit
#fi

# fzf-tab
# https://github.com/Aloxaf/fzf-tab#configure
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# preview directory's content with eza when completing z
zstyle ':fzf-tab:complete:z:*' fzf-preview 'eza -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
