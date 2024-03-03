# MATHIEU ####################

alias cat="batcat"

FZF_DEFAULT_COMMAND='find . -type f'

function n() {
  file_selected="$(fzf --preview 'batcat --color=always --style plain {}')"
  if [ -z "$file_selected" ]
  then
    echo "No file selected"
  else
    nano "$file_selected"
  fi
}

export -f n

# MATHIEU ####################
