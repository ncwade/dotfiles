# ALIASES
alias refresh='source ~/.zshrc'
alias oo='open .'
alias vup="vagrant up"
alias vsus="vagrant suspend"
alias vhalt="vagrant halt"
alias vkill="vagrant destroy"
alias vssh="vagrant ssh"
alias week='date +%V'
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias damn='sudo $(fc -ln -1)'
alias tmux="tmux -2"
alias kwmon='brew services start kwm'
alias kwmoff='brew services stop kwm'
function weather() {
  curl "http://wttr.in/${1-}";
}
