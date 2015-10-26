POWERLINE_ROOT="$HOME/.local/lib/python2.7/site-packages/powerline"

if [[ -o interactive ]]; then
  export PROMPT=""
  fpath=($ZSHKIT/zsh-git/functions $fpath)
  typeset -U fpath
  setopt prompt_subst
	autoload -U colors
	autoload -U promptinit
  promptinit
  prompt wunjo
fi
