if [[ -o interactive ]]; then
	fpath=($ZSHKIT/zsh-git/functions $fpath)
	typeset -U fpath
	setopt prompt_subst
	autoload -U colors
	autoload -U promptinit
	promptinit
	prompt wunjo
fi
# PROMPT='%{$reset_color%}%B%n%b@%m %~`git-prompt`%(!.#.>) '
