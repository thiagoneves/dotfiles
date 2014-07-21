export JAVA_HOME=$(/usr/libexec/java_home)

export PATH="/usr/local/bin:$JAVA_HOME/bin:$PATH"

# "path" shows current path, one element per line.
# If an argument is supplied, grep for it.
function path() {
    test -n "$1" && {
        echo $PATH | perl -p -e "s/:/\n/g;" | grep -i "$1"
    } || {
        echo $PATH | perl -p -e "s/:/\n/g;"
    }
}