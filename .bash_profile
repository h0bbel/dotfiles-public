#
# .bash_profile
#
# @author Christian Mohn
#

# Prompt moved to .bash_prompt

alias bashreload=". ~/.bash_profile"
alias vi="vim"
alias ls="ls -laGF"
alias fuck='sudo $(history -p \!\!)'

#Generic Colouriser
alias tail='grc tail'
alias ping='grc ping'
alias traceroute='grc traceroute'
alias ps='grc ps'

alias hosts='sudo nano /etc/hosts'

alias fopen="open -a Finder ./"
alias httpd="python -m SimpleHTTPServer"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flushdns="sudo killall -HUP mDNSResponder"
alias renewip="sudo ipconfig set en0 DHCP"
alias vninja="open http://vNinja.net/wordpress/wp-admin/"

alias starttftpd="sudo launchctl load -F /System/Library/LaunchDaemons/tftp.plist && sudo launchctl start com.apple.tftpd && cd /private/tftpboot/"
alias stoptftpd="sudo launchctl stop com.apple.tftpd && sudo launchctl unload -F /System/Library/LaunchDaemons/tftp.plist" 

# SSH Connections
alias sshplex="ssh administrator@192.168.5.69"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;


# Docker
alias powercli="docker run --rm -it --entrypoint='/usr/bin/powershell' vmware/powerclicore"


# Removes all .DS_Store files.
alias remove_ds="find . -type f -name '*.DS_Store' -ls -delete"

# Hacks / Customizations
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder":
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"


# Functions

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Autocomplete all the things
# Requirements:
#	brew install bash-completion
#	brew tap homebrew/completions

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Sound
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"

# Git

# Turn on Git autocomplete. src=https://github.com/geerlingguy/dotfiles/blob/master/.bash_profile

brew_prefix=`brew --prefix`
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi



export PATH=~/usr/bin:$PATH

. ~/.bash_prompt # Load bash_prompt
