POWERLINE_ROOT="$HOME/.local/lib/python2.7/site-packages/powerline"

if [[ -o interactive ]]; then
  export PROMPT=""
  fpath=($ZSHKIT/zsh-git/functions $fpath)
  typeset -U fpath
  setopt prompt_subst
	autoload -U colors
	autoload -U promptinit
  if [[ -f "$POWERLINE_ROOT/bindings/zsh/powerline.zsh" ]]; then
    . $POWERLINE_ROOT/bindings/zsh/powerline.zsh
  else
    promptinit
    prompt wunjo
  fi
fi
# PROMPT='%{$reset_color%}%B%n%b@%m %~`git-prompt`%(!.#.>) '
