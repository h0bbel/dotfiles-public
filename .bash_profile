source ~/.bashrc
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


alias bashreload=". .bash_profile"
alias vi="vim"
alias ls="ls -laGF"

alias httpd="python -m SimpleHTTPServer"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flushdns="dscacheutil -flushcache"

# Hacks / Customizations
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder":
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

