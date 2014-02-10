#source ~/.bashrc
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacadalias ls='ls -GFh'
export HISTTIMEFORMAT="%d/%m/%y %T " # Date / Time display for 'history''

alias bashreload=". ~/.bash_profile"
alias vi="vim"
alias ls="ls -laGF"

alias fopen="open -a Finder ./"


alias httpd="python -m SimpleHTTPServer"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flushdns="sudo killall -HUP mDNSResponder"
alias feedly="open http://cloud.feedly.com/#my"
alias vninja="open http://vNinja.net/wordpress/wp-admin/"

alias wakelaban="~/Git/scripts/wakelaban.py"
alias wakelou="~/Git/scripts/wakelou.py"

# Hacks / Customizations
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder":
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"


source "`brew --prefix grc`/etc/grc.bashrc"
