cd() {
  builtin cd "${@:-$HOME}" && pwd > $CDHISTORY;
}