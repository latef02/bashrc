#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export LANG


#calender aliases
alias jan='cal -m 01'
alias feb='cal -m 02'
alias mar='cal -m 03'
alias apr='cal -m 04'
alias may='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias aug='cal -m 08'
alias sep='cal -m 09'
alias oct='cal -m 10'
alias nov='cal -m 11'
alias dec='cal -m 12'


#aliases for commonly used commands
alias off='shutdown now'
alias cl='clear'
alias h='history | fzf'
alias df='df -h'
alias free='free -m'
alias scr="cd ~/scripts"
####New add 
alias wifils="nmcli dev wifi list"
alias chat="hexchat"
alias rm='sudo \mv -ft $@ ~/.trash/' 
alias empty-trash='sudo \rm -rf ~/.trash && mkdir ~/.trash'
alias bashrcv="sudo vim ~/.bashrc"
alias fim='vim $(fzf)'
alias fixvivaldi="sudo find ~/ -type d -name GPUCache -exec rm -rf {} +"
alias mnt="sudo mount /dev/sdb4 ./mounted"
alias movies="sudo mount /dev/sdb4 ./mounted && cd ~/mounted/movies && lf"
alias umnt="sudo umount /dev/sdb4 ./mounted"
alias man="tldr"
alias clock='tty-clock -cC 7 -f %d.%m.%y'
alias yta='yt-dlp -x -f ba --embed-metadata --embed-thumbnail'
alias aplay='mpv --no-video' 
	    
# Git Shortcuts
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --decorate --graph"
alias gcl="git clone"

#alias "music"="ranger '/run/media/myuserid/Expansion/Videos/Music'"
####old

alias ll="ls -lh"
alias lll="ls -la"
alias lsdd="ls -ltr"
alias lsh="ls -d .?*"
#alias rm="rm -i"
#alias mv="mv -iv"
alias desk='cd ~/Desktop'
alias down='cd ~/Downloads'
alias cp='cp -iv'
alias lsa='ls -a'
alias lsd='ls -d */'

#auto complete 

#Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion



# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls  --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

fi
#
#alias ls='ls --color=auto'
alias freq='sudo auto-cpufreq --stats'
alias pi='doas pacman -S'
alias pr='doas pacman -R'
alias pu='doas pacman -Syy && sudo pacman -Syu'
alias pq='doas pacman -Sii'
alias s='doas pacman -Ss'
alias grep='grep --color=auto'
alias lf="lfrun"
alias xl="sudo libreoffice --calc"
alias t="~/scripts/timerunning"
PS1='$(date +%H:%M)|\j|\W > '
export PATH=$PATH:/home/latef/scripts/dwmbscripts
export PATH=$PATH:/home/latef/scripts/
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"








HISTSIZE=20000
HISTFILESIZE=20000

set -o vi 


#map f toggle_fullscreen
#map [fullscreen] f toggle_fullscreen
#set selection-clipboard clipboard

#if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
#	 bicon.bin
#fi

PATH="/home/latef/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/latef/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/latef/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/latef/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/latef/perl5"; export PERL_MM_OPT;
