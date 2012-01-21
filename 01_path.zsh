path=(/usr/local/bin /usr/bin /usr/local/sbin /usr/sbin $path)

# If macports is installed
if [[ (! -L "/opt/local" ) && ( -d "/opt/local") ]]; then
  path=(/opt/local/bin $path)
  manpath=(/opt/local/man $manpath)
fi
path=(~/bin $path)

# setup fpath

fpath=($ZSHKIT/func $ZSHKIT/completions $fpath)

# cleanup the path.
typeset -U fpath path manpath
