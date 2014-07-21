# Check if given url is giving gzipped content
function gzip() {
  local r=`curl -L --write-out "%{size_download}" --output /dev/null --silent $1`
  local g=`curl -L -H "Accept-Encoding: gzip,deflate" --write-out "%{size_download}" --output /dev/null --silent $1`
  local message

  local rs=`expr ${r} / 1024`
  local gs=`expr ${g} / 1024`

  if [[ "$r" =  "$g" ]]; then
    message="Regular: ${rs}KB\n\033[31m → Gzip: ${gs}KB\033[0m"
  else
    message="Regular: ${rs}KB\n\033[32m → Gzip: ${gs}KB\033[0m"
  fi

  echo -e $message
  return 0
}

# Apache ab
function abtest() {
  ab -n $2 -c $3 -H 'Accept-Encoding: gzip' "http://$1/"
}