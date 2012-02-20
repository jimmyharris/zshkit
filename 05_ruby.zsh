alias irb='irb --readline -r irb/completion'

# Rbenv support
#
if [[ -d $HOME/.rbenv ]] ; then 
  RBENV_DIR= "$HOME/.rbenv"
elif [[ -d /usr/local/rbenv ]] ; then 
  RBENV_DIR= "/usr/local/rbenv" 
elif [[ -s /Users/ramiel/.rvm/scripts/rvm ]] ; then 
  source /Users/ramiel/.rvm/scripts/rvm ; 
elif [[ -s /usr/local/rvm/scripts/rvm ]] ; then 
  source /usr/local/rvm/scripts/rvm ; 
fi

if [[ -n "$RBENV_DIR" ]]; then
  path = ("$RBENV_DIR" $path)
  eval `rbenv init`
fi

typeset -U fpath path manpath
