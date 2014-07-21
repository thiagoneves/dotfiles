cd() {
  builtin cd "${@:-$HOME}" && ls;
}