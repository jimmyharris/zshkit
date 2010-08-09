if [[ $SHLVL < 3 ]]; then
	mydir=`dirname $0`

	for f in $mydir/??_*.zsh; do
		source $f
	done
fi
