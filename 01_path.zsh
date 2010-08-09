if [[ -x /usr/libexec/path_helper ]]; then
	eval $(/usr/libexec/path_helper -s)
fi

# setup fpath

fpath=($ZSHKIT/func $fpath)

# cleanup the path.
typeset -U fpath path manpath
