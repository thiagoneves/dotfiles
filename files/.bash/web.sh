# Screw you, "no nodename or servname not provided". I'll do `whois
# http://google.com/` if I want.
function whois() {
  command whois $(echo $1 | sed -e 's|https?://||' -e 's|/||g')
}