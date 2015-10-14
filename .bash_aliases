alias lstree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# shortcuts
alias vip='vi ~/.bash_profile;source ~/.bash_profile'
alias vih='sudo vi /etc/hosts'
alias h=history
alias cls=clear

# manage aliases
alias la=alias
alias doa='source ~/.bash_aliases'
alias via='vi ~/dotfiles/.bash_aliases'

# configure ls, grep, etc...
alias ls='ls --color=auto'
alias ll='ls -alF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grepin='grep -i -r -n'

