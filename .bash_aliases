# Called from .bashrc
# Select features base on operating system.
# $OSNAME is set to uname
# Tested Systems:
# Darwin - osx
#
[[ "Darwin" -eq "$(uname)" ]] && echo LOAD aliases for DARWIN

alias lstree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# shortcuts
alias vip='vi ~/.bash_profile;source ~/.bash_profile'
alias vih='sudo vi /etc/hosts'
alias h=history
alias cls=clear

# manage aliases
alias la=alias
alias lag='alias -p | grep -i'
alias doa='source ~/.bash_aliases'
alias via='vi ~/dotfiles/.bash_aliases'

# configure ls, grep, etc...
alias ls='ls -G'
alias ll='ls -alF'

#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
#alias grepin='grep -i -r -n'


if [[ "Darwin" == "$(uname)" ]]; then
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim 
alias lb='./osx_deploy.sh -b'
alias mkinst='./osx_deploy.sh -p -i'
alias s='cd /Users/john/src/spl'
alias p='cd /Users/john/src/spl/platform'
alias b='cd /Users/john/src/build'
alias bb='exp /Users/john/src/build'
alias goweb='cd ~/src/web'
alias dotpath='PATH=.:$PATH'
alias goweb='cd ~/src/web'
alias dotpath='PATH=.:$PATH'
alias uartvi='sudo mvim  /System/Library/Extensions/FTDIUSBSerialDriver.kext/Contents/Info.plist'
alias uartavi='suo mvim /System/Library/Extensions/IOUSBFamily.kext/Contents/PlugIns/AppleUSBFTDI.kext/Contents/Info.plist'
alias uartld='sudo kextload /System/Library/Extensions/FTDIUSBSerialDriver.kext'
alias uartunld='sudo kextunload /System/Library/Extensions/FTDIUSBSerialDriver.kext'
alias uartstat='kextstat | grep -i FTDI'
alias setqt='PATH=/Volumes/tmpvol/Qt/Qt5.4.1/5.4/clang_64/bin/:$PATH'
alias pg='ps aux | grep --color -i '
alias ls='ls -G'
alias gosarris='ssh johnb@sarris.damnet.us'
alias gogwen='ssh johnb@gwen.damnet.us'
alias cljg='grep -r --color=auto --include="*.clj" '
alias bs='brew search'
alias bi='brew info'
alias uml='java -jar ~/bin/plantuml.jar'
alias goovt='cd ~/proj/bk/ot/overtone'
alias golt='cd ~/Dropbox/science_land/jam_room/src/looptoss'
alias lctl='launchctl'
alias lsvimclo='ps aux | grep -i "bin\/lein vimclojure"'
alias gobk='cd ~/proj/bk'
alias goss='cd ~/proj/dc/seesaw'
alias vivp='vi ~/.vim'
alias dcu='./dcpm'
alias lsbld='set | grep NKBLD'
alias l='ls -lFG'
alias gvim='mvim'
alias golog='cd ~/Library/Logs'
alias gonkdev='cd ~/proj/nk/projects'
alias govb='cd ~/.vim/bundle/'
alias viv='vi ~/.vimrc'
alias vic='vi ~/.vim/colors/jellybeans.vim'
alias godc='cd ~/src/looper/buzz/apps'
alias goua='cd ~src/ua/fw2plug' 
alias got='cd ~/src/tools'
alias gosa='cd ~/proj/bk/ot/spring-awake'
alias vm='dvtm -m ^o'
alias lsusb='system_profiler SPUSBDataType | grep -v "USB\:" | grep -v "USB High-Speed Bus\:" | grep "\(\:$\|^.*Product\|^[ ]*Vendor\|Current Avail\)"'
alias vipmt='vi ~/ge/prompt.bash;source ~/ge/prompt.bash'
alias h=history
alias svnm='svn status | grep ^M'
alias gop2='cd /Users/john/proj/p2;source nk.sh -v'
alias go2='cd /Users/john/proj/p2;source nk.sh -v'
alias goblue='cd /Volume/nk'
alias gs='git status'
alias ll='ls -alFG'
alias lc='ls -G'
alias gonk='cd ~/proj/nk/'
alias cls=clear
alias via='vi ~/ge/alias.cfg;doa'
alias doa='source ~/ge/alias.cfg'
alias gola='cd /Library/Application\ Support'
alias midimon_off='mv ~/Library/Audio/MIDI\ Drivers/MIDI\ Monitor.plugin ~/Library/Audio/MIDI\ Drivers/MIDI\ Monitor.plugin_off'
alias midimon_on='mv ~/Library/Audio/MIDI\ Drivers/MIDI\ Monitor.plugin_off ~/Library/Audio/MIDI\ Drivers/MIDI\ Monitor.plugin'
alias midiper_off='sudo mv /Library/Audio/MIDI\ Drivers/PaeFireStudioMIDIDriver.plugin /Library/Audio/MIDI\ Drivers/PaeFireStudioMIDIDriver.plugin_off'
alias midiper_on='sudo mv /Library/Audio/MIDI\ Drivers/PaeFireStudioMIDIDriver.plugin_off /Library/Audio/MIDI\ Drivers/PaeFireStudioMIDIDriver.plugin'
alias midi_auto_off='launchctl unload /System/Library/LaunchAgents/com.apple.midiserver.plist'
alias midi_auto_on='launchctl load /System/Library/LaunchAgents/com.apple.midiserver.plist'
alias mididbg='gdb /System/Library/Frameworks/CoreMIDI.framework/MIDIServer'
alias midistart='/System/Library/Frameworks/CoreMIDI.framework/MIDIServer'
alias gomidi='cd /Library/Audio/MIDI\ Drivers/'
alias la=alias
alias vihosts='sudo vi /etc/hosts'
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias lstree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias exp="open "
alias go="open -R "
alias grepin="grep -i -r -n"
alias vip='vi ~/.bash_profile;source ~/.bash_profile'
alias vih='sudo vi /etc/hosts'
alias meunload='launchctl unload /Library/LaunchAgents/com.nektartech.macroedit.plist'
alias meload='launchctl load /Library/LaunchAgents/com.nektartech.macroedit.plist'
alias mestart='mkdir /Library/Application\ Support/Nektar/Data/start_macroedit;rmdir /Library/Application\ Support/Nektar/Data/start_macroedit'
alias instme='sudo cp $NEKTAR_ROOT/src/inst/osx/com.nektartech.macroedit.plist /Library/LaunchAgents/;sudo cp -Rf $NEKTAR_ROOT/build/bin/64/nkl.app /Library/Application\ Support/Nektar/bin;ll /Library/LaunchAgents/com.nektartech.macroedit.plist'
alias vime='vi $NEKTAR_ROOT/src/inst/osx/com.nektartech.macroedit.plist;instme'
alias pmaker='/Applications/Xcode.app/Contents/Applications/Utilities/PackageMaker.app/Contents/MacOS/PackageMaker'
alias m8='make -j 8'
alias loadme='launchctl load /Library/LaunchAgents/com.nektartech.macroedit.plist'
alias cleands='find .  -name ".DS_Store" -exec rm -f {} \;'
alias lsnk='pkgutil --packages | grep nektar'
alias pe='launchctl getenv'
alias se='launchctl setenv'
alias rg='grep -R --include=*.clj --include=*.h --exclude=*.inl.h atom .'

function rg {
  excludeit=--exclude="$3"
  includeit=--include="*.$2"
  [[ -n "$3" ]] || excludeit=
  [[ -n "$2" ]] || includeit=
  echo Args: grep -R  $includeit $excludeit $1 .
  grep --color -R $excludeit $includeit $1 .
}

function mvs {
# move to stuff
mv $1 ~/stuff
}

function cowd {
  svn $1 http://svn.wdc.com/svn/driveprograms/ARCH7/$2 $3
}
function cg {
  cljg $1 .
}

fi # DARWIN

function lscolor {
# FROM: http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
#   This function echoes a bunch of color codes to the 
#   terminal to demonstrate what's available.  Each 
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a 
#   test use of that color on all nine background 
#   colors (default + 8 escapes).
#

T='gYw'   # The test text

echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo
}
