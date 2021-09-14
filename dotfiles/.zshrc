# PATH

# Default path
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
# Allow any custom binaries
export PATH="$HOME/bin:$PATH"
# yarn
export PATH="$HOME/.yarn/bin:$PATH"
# Add gnu packages
export PATH="$(brew --prefix gnu-sed)/libexec/gnubin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# Treatwell path
# ------------------------------------------
# twbox
export PATH="$HOME/wahanda/twbox/bin:$PATH"

# pact
export PATH="$HOME/wahanda/pact/bin:$PATH"

# java
 export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
 export JAVA_HOME="/usr/local/opt/openjdk@11"

# gitflow
export PATH="$HOME/wahanda/gitflow:$PATH"

# Twist
export PATH="$HOME/wahanda/platform/dev-tools/bin:$PATH"

export ZPLUG_USE_CACHE=true
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

ZSH_GIT_PROMPT="$HOME/zsh-git-prompt/zshrc.sh"
# CUSTOM_GIT="$HOME/dotfiles/scripts/custom_git.zsh"

[ -s $ZSH_GIT_PROMPT ] && source $ZSH_GIT_PROMPT
#[ -s $CUSTOM_GIT ] && source $CUSTOM_GIT

zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "denysdovhan/spaceship-prompt", as:theme
zplug "hlissner/zsh-autopair", defer:3
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions", defer:2

zplug load

SPACESHIP_DIR_COLOR="yellow"
SPACESHIP_USER_SHOW="true"
SPACESHIP_CHAR_COLOR_SUCCESS="white"
SPACESHIP_CHAR_COLOR_FAILURE="white"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  #custom_git
  line_sep      # Line break
  jobs          # Background jobs indicator
  char          # Prompt character
)

# Python3
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# Node dev
export NODE_ENV=development

# Shell integration
[ -s ~/.fzf.zsh ] && source ~/.fzf.zsh

# volta
# https://docs.volta.sh/
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s --aliases=false)"

[ -s ~/.aliases ] && source ~/.aliases
