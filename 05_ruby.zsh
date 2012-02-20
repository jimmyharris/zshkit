alias irb='irb --readline -r irb/completion'

# Rbenv support
#
# Rbenv support
#
if [[ -d "${HOME}/.rbenv/bin" ]]; then
  rbenv_root="${HOME}/.rbenv"
elif [[ -d "/usr/local/rbenv/bin" ]]; then
  rbenv_root="/usr/local/rbenv"
  export RBENV_ROOT="$rbenv_rooth"
elif [[ -s /Users/ramiel/.rvm/scripts/rvm ]] ; then 
  source /Users/ramiel/.rvm/scripts/rvm ; 
elif [[ -s /usr/local/rvm/scripts/rvm ]] ; then 
  source /usr/local/rvm/scripts/rvm ; 
fi

if [[ -n $rbenv_root ]]; then
  path=($rbenv_root/bin $path)
  eval "$(rbenv init -)"
fi

typeset -U fpath path manpath
