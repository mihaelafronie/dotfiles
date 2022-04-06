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

export ZPLUG_USE_CACHE=true
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "hlissner/zsh-autopair", defer:3
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions", defer:2

zplug load

eval "$(starship init zsh)"

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
[ -s ~/.functions ] && source ~/.functions
[ -s ~/.work ] && source ~/.work

#TW OVERRIDES
if [ -f ~/.treatwellrc ]; then
    . ~/.treatwellrc
fi

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"