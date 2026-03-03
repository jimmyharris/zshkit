if [[ -x /usr/libexec/path_helper ]]; then
	eval $(/usr/libexec/path_helper -s)
fi

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

# set up fpath
fpath=(~/.zsh/func $fpath)
