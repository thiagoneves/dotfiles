git config --global user.name "thiagoneves"
git config --global user.email "thiagohneves@gmail.com"
git config --global core.excludesfile ~/.gitignore

# git auto-completion
if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi