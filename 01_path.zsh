path=(~/bin $path)

# setup fpath

fpath=($ZSHKIT/func $fpath)

# cleanup the path.
typeset -U fpath path manpath
