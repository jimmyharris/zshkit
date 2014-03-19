
# On my mac I may have gnu coreutils installed. In that case it will be called
# gls. On a normal Linux distro it will simply be ls. If I am not on linux and
# gls doesn't exist, then I am using BSD LS.

export LS_COLORS=""

if [[ -x `which gls` ]]; then
	alias rls=`which ls`
	alias ls='gls -h --color=auto '
  eval $(gdircolors "$ZSHKIT/dircolors-solarized/dircolors.ansi-dark")
elif [[ $OSTYPE == "linux-gnu" ]]; then
	alias ls='ls -h --color=auto '
  eval $(dircolors "$ZSHKIT/dircolors-solarized/dircolors.ansi-universal")
else
  # TODO: Fix bsd ls for solarized. much uglier than it seems.
	export LS_COLORS=BxfxcxdxCxegedabagacadp
fi
alias ll="ls -al"

