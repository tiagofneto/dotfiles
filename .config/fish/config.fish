fish_vi_key_bindings

alias grep='grep --color=auto'
alias ls='exa -lahF --icons --group-directories-first --git'

abbr vim 'nvim'

abbr mv 'mv -i'
abbr rm 'rm -i'
abbr cp 'cp -i'

abbr brightmin 'xrandr --output eDP-1 --brightness 0.8'
abbr brightmed 'xrandr --output eDP-1 --brightness 1'
abbr brightmax 'xrandr --output eDP-1 --brightness 1.2'

alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config'
alias vimconf='nvim ~/.config/nvim/init.vim'
alias bashrc='nvim ~/.bashrc'
alias fishconf='nvim ~/.config/fish/config.fish'
alias fishfolder='cd ~/.config/fish/'

alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
