# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marcelblijleven/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  brew
  git
  gradle
  ng
  npm
  yarn
  zsh-autosuggestions
  osx
  sdkman
)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'

DEFAULT_USER="$USER"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

VIRTUAL_ENV_DISABLE_PROMPT=1

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

alias x="exit"
alias sz="source ~/.zshrc"
alias hc="history -c"

#Include Z
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliasses
alias ahold="cd ~/projects/ahold"
