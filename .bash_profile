#source ~/.bashrc
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacadalias ls='ls -GFh'
export HISTTIMEFORMAT="%d/%m/%y %T " # Date / Time display for 'history''

alias bashreload=". ~/.bash_profile"
alias vi="vim"
alias ls="ls -laGF"
alias tail='colourify tail'

alias fopen="open -a Finder ./"
alias httpd="python -m SimpleHTTPServer"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flushdns="sudo killall -HUP mDNSResponder"
alias feedly="open http://cloud.feedly.com/#my"
alias vninja="open http://vNinja.net/wordpress/wp-admin/"
alias routelab="sudo ~/.scripts/RouteLab.sh"

alias clock="while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &"

alias starttftpd="sudo launchctl load -F /System/Library/LaunchDaemons/tftp.plist && sudo launchctl start com.apple.tftpd && cd /private/tftpboot/"
alias stoptftpd="sudo launchctl stop com.apple.tftpd && sudo launchctl unload -F /System/Library/LaunchDaemons/tftp.plist" 

# Removes all .DS_Store files.
alias remove_ds="find . -type f -name '*.DS_Store' -ls -delete"

# Hacks / Customizations
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder":
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"


source "`brew --prefix grc`/etc/grc.bashrc"

# Functions
function md2word () {  
    PANDOC_INSTALLED=$(pandoc --version >> /dev/null; echo $?)

    if [ "0" == ${PANDOC_INSTALLED} ]; then
        pandoc -o $2 -f markdown -t docx $1
    else
        echo "Pandoc is not installed. Unable to convert document."
    fi
}
