# Make vim the default editor
export EDITOR="vim"
export VISUAL="vim"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help:clear"

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

# Highlight
export PAGER="less"
export LESS="-REX"
export LESS_TERMCAP_mb=$'\E[04;33m'
export LESS_TERMCAP_md=$'\E[04;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;32m'