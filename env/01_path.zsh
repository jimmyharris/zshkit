path=(/usr/local/bin /usr/bin /usr/local/sbin /usr/sbin $path)

# If macports is installed
if [[ (! -L "/opt/local" ) && ( -d "/opt/local") ]]; then
  path=(/opt/local/bin $path)
  manpath=(/opt/local/man $manpath)
fi

if [[ -d "$HOME/.linuxbrew/bin" ]]; then
  path=(~/.linuxbrew/bin $path)
fi

if [[ -d "$HOME/.local/bin" ]]; then
  path=(~/.local/bin $path)
fi

# Setup home directory bin path.
path=(~/bin $path)

# setup fpath

fpath=($ZSHKIT/func $ZSHKIT/completions/src $fpath)

# cleanup the path.
typeset -U fpath path manpath
