export INSTALL_DIR=$HOME/local
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export EDITOR="vim"
export VISUAL="vim"
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

export HISTFILE="$HOME/.bash_history"
export HISTSIZE=100000
export HISTCONTROL=ignoreboth:erasedups

export GEM_HOME=$INSTALL_DIR/ruby/gems
export GEM_PATH=$INSTALL_DIR/ruby/gems
export NPM_HOME=$INSTALL_DIR/node/npm
export JAVA_HOME=$(/usr/libexec/java_home)

export PAGER="less"
export LESS="-REX"
export LESS_TERMCAP_mb=$'\E[04;33m'
export LESS_TERMCAP_md=$'\E[04;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;32m'

for option in autocd cdspell cmdhist dotglob extblog dirspell globstar histappend nocaseglob no_empty_cmd_completion checkwinsize; do
  tmp="$(shopt -q "$option" 2>&1 > /dev/null | grep "invalid shell option name")"
  if [ '' == "$tmp" ]; then
    shopt -s "$option"
  fi
done

set -o ignoreeof
set bell-style none