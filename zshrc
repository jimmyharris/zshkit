BASE16_SHELL="$ZSHKIT/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $ZSHKIT/base16-shell/base16-default.dark.sh
autoload -Uz colors
colors

mydir=`dirname $0`

for f in $mydir/rc/??_*.zsh; do
	source $f
done
