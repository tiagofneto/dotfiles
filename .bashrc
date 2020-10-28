#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#To change terminal colors
#BLUE="$(tput setaf 15)"
#WHITE="$(tput setaf 33)"
#RESET="$(tput sgr0)"

# alias ls='ls --color=auto'
alias ls='exa -lahF --icons --group-directories-first --git'
alias grep='grep --color=auto'

alias vim='nvim'

#Prompt colors
#Code wraped im \[ \] cause man page tells to do so
#PS1='\[${WHITE}\][\u\[${BLUE}\]@\[${WHITE}\]\h \W]\[${RESET}\]\$ '
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export PATH="$PATH:~/.local/bin"
export PATH="$PATH:~/opt/flutter/bin"

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


#I have my personal aliases in the bash_alisases file, and the ones I consider useful for any system I keep here in the .bashrc
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Brightness
alias brightmin='xrandr --output eDP-1 --brightness 0.8'
alias brightmed='xrandr --output eDP-1 --brightness 1'
alias brightmax='xrandr --output eDP-1 --brightness 1.2'

# Configs
alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config'
alias vimconf='nvim ~/.config/nvim/init.vim'
alias bashrc='nvim ~/.bashrc'


#Weather
alias weather='curl wttr.in'

#Manage dotfiles - I use a git bare repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

#Fish interactive shell
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi
