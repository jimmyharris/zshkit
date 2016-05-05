if [[ -x /usr/libexec/path_helper ]]; then
	eval $(/usr/libexec/path_helper -s)
fi
mydir=`dirname $0`

for f in $mydir/env/??_*.zsh; do
	source $f
done
