path=(/usr/local/bin /usr/bin $path)

# If macports is installed
if [[ (! -L "/opt/local" ) && ( -d "/opt/local") ]]; then
  path=(/opt/local/bin $path)
  manpath=(/opt/local/man $manpath)
fi
path=(~/bin $path)

# setup fpath

fpath=($ZSHKIT/func $fpath)

# cleanup the path.
typeset -U fpath path manpath
