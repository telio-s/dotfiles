export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

<<<<<<< HEAD
export AWS_PROFILE=amity
export AWS_REGION=amity
=======
export AWS_PROFILE=default
export AWS_REGION=default
export PATH=$HOME/development/flutter/bin:$PATH
>>>>>>> 229f13f (update lsp and nvim tab bar)

# shell zsh starship
eval "$(starship init zsh)"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

<<<<<<< HEAD
alias ls="eza --icons=always --long --color=always --no-filesize --no-time --no-user --no-permissions"
=======
alias ls="eza --icons=always --long --no-filesize --no-time --no-user --no-permissions"
alias lzd="lazydocker"
>>>>>>> 229f13f (update lsp and nvim tab bar)

# zsh-autosuggestion, use history for suggestion
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting, highlighting syntax command line
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zoxide, better cd
alias cd="z"
eval "$(zoxide init zsh)"
<<<<<<< HEAD
=======

# clear and add new line
precmd() { precmd() { echo "" } }
>>>>>>> 229f13f (update lsp and nvim tab bar)
