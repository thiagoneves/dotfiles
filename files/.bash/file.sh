# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

# Switches two files contents
function switch() {
  mv $1 $1_orig &&
  mv $2 $1 &&
  mv $1_orig $2
}

# Rsync
function rscp() {
  rsync -vr --partial --progress -e ssh $1 $2
}

# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* *;
  fi;
}
