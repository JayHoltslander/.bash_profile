source ~/.profile
if [ -f ~/.bashrc ]; then 
    source ~/.bashrc 
fi
PHP_VERSION=$(ls /Applications/MAMP/bin/php/ | sort -n | tail -1)
export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH

alias wp='php /Applications/MAMP/bin/php/${PHP_VERSION}/bin/wp-cli.phar'

# -------
# Jay's Aliases
# -------
alias o="open ." # Open the current directory in Finder
alias clear="clear;pwd"
alias clr="clear"
alias c="clear"
alias cd..='cd ..;pwd' # Get rid of command not found
alias ll="ls -lAh" # List all files in current directory in long list format, skip dots, no math for filesizes
alias ldir="ls -al | grep ^d" # List all directories in current directory in long list format

alias ip="echo -e 'External IP is:';curl ipinfo.io/ip" # External IP address
alias ipe="echo -e 'External IP is:';curl ipinfo.io/ip" # External IP address
alias ipi="echo -e 'Local IP is:';ipconfig getifaddr en0" # Local IP address
# alias flush="dscacheutil -flushcache" # Flush DNS (Snow Leopard, Leopard)
# alias flush="sudo discoveryutil udnsflushcaches" # Flush DNS (Yosemite)
alias flush="killall -HUP mDNSResponder" # Flush DNS (Mavericks, Mountain Lion, Lion, Mojave)

alias ut="uptime" # Computer uptime
alias wget='wget -c' # Resume wget by default
alias getpass="openssl rand -base64 20" # Generate a random, 20-character password
alias ping='ping -c 5' # Limit ping to 5 pings
alias www='python -m SimpleHTTPServer 8000' # Start a web server in any folder

export PATH="$HOME/.cargo/bin:$PATH"
