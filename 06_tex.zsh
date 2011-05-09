if [[ -d '/usr/texbin' ]]; then
  path=(/usr/texbin $path)
  typeset -U path
fi
