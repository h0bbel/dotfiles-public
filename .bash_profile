source ~/.bashrc
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


alias bashreload=". ~/.bash_profile"
alias vi="vim"
alias ls="ls -laGF"

alias fopen="open -a Finder ./"


alias httpd="python -m SimpleHTTPServer"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flushdns="dscacheutil -flushcache"

alias feedly="open http://cloud.feedly.com/#my"
alias vninja="open http://vNinja.net/wordpress/wp-admin/"

alias wakelaban="~/git/scripts/wakelaban.py"

# Hacks / Customizations
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder":
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

#Functions


