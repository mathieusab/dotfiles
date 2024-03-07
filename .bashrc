# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


#  __  __       _   _     _                  _
# |  \/  |     | | | |   (_)                (_)
# | \  / | __ _| |_| |__  _  ___ _   _ _ __  ___  __
# | |\/| |/ _` | __| |_ \| |/ _ \ | | | '_ \| \ \/ /
# | |  | | (_| | |_| | | | |  __/ |_| | | | | |>  <
# |_|  |_|\__,_|\__|_| |_|_|\___|\__,_|_| |_|_/_/\_\
#


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

## Alias

### Navigation
alias cat="batcat"
alias ls="eza"
alias l="eza -l"
alias lst="eza -l -T"
alias mkdir="mkdir -pv"
alias ll='ls -alF'
alias la='ls -A'

### Git
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gl="git log --oneline"
alias gc="git checkout"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## Variables

### History

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%F %T "
shopt -s checkwinsize
shopt -s histappend

### FZF

FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

### Prompt

# Using color promt
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[48;2;221;75;57;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;221;75;57m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
else
    PS1='\[\033[48;2;105;121;16;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;105;121;16m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \u@\h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
fi

## Functions

function n() {
  file_selected="$(find . -type f -not -path '*/\.git/*' | fzf --preview 'batcat --color=always --style plain {}')"
  if [ -z "$file_selected" ]
  then
    echo "No file selected"
  else
    nano "$file_selected"
  fi
}

export -f n

## Completion

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# pyautocompleteoptions
if [ -d "$HOME/.pyautocomplete" ]; then
        for i in `find $HOME/.pyautocomplete -maxdepth 1 -type f -name "*sh"`; do source $i; done
fi

# pyautocompleteoptions
if [ -d "$HOME/.pyautocomplete" ]; then
        for i in `find $HOME/.pyautocomplete -maxdepth 1 -type f -name "*sh"`; do source $i; done
fi

# pyautocompleteoptions
if [ -d "$HOME/.pyautocomplete" ]; then
        for i in `find $HOME/.pyautocomplete -maxdepth 1 -type f -name "*sh"`; do source $i; done
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(zoxide init bash --cmd cd)"
