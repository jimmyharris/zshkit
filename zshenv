mydir=`dirname $0`

for f in $mydir/??_*.zsh; do
	source $f
done
