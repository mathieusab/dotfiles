# MATHIEU ####################

## Alias

### Navigation
alias cat="batcat"
alias cd="z"
alias ls="eza"
alias l="eza -la"
alias lst="eza -l -T"
alias mkdir="mkdir -pv"

### Git
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gl="git log --oneline"
alias gc="git checkout"

## Variables

### FZF

FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
HISTTIMEFORMAT="%F %T "

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

eval "$(zoxide init bash --cmd cd)"

# MATHIEU ####################
