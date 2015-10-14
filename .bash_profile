shopt -s histappend
shopt -s cdspell

# example tab completion for OSX common apps
# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

