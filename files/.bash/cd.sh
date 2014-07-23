export CDHISTORY="/tmp/cd-$USER"

if [ -f $CDHISTORY ]; then
   dir=$(cat $CDHISTORY)

   if [ -d "$dir" ]; then
    cd "$dir"
   fi
fi

cd() {
  builtin cd "${@:-$HOME}" && ls && pwd > $CDHISTORY;
}