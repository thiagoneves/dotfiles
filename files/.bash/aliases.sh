alias ..="cd .."
alias ll="ls -Glahs"
alias ls="ls -Gh"
alias cl="clear"
alias psgrep="ps aux | grep -v grep | grep"
alias reload="source ~/.bash_profile"
alias subl="subl -n"

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr="ps aux | grep ruby"
alias psj="ps aux | grep java"

alias hosts="sudo vim /etc/hosts"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Copy public key to pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Update dotfiles
alias redot="curl -Ls https://raw.github.com/thiagoneves/dotfiles/master/install.bash | bash"