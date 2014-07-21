export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export EDITOR="vim"
export VISUAL="vim"
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

export HISTSIZE=100000
export HISTCONTROL=ignoreboth
export HISTIGNORE="&"

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