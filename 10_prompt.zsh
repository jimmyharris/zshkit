POWERLINE_ROOT="$HOME/.local/lib/python2.7/site-packages/powerline"

if [[ -o interactive ]]; then
  export PROMPT=""
  fpath=($ZSHKIT/zsh-git/functions $fpath)
  typeset -U fpath
  setopt prompt_subst
	autoload -U colors
	autoload -U promptinit
  powerline_path="$POWERLINE_ROOT/bindings/zsh/powerline.zsh"
  if [[ ( $TERM != "linux"  ) && ( -f $powerline_path ) ]]; then
    . $powerline_path
  else
    promptinit
    prompt wunjo
  fi
fi
# PROMPT='%{$reset_color%}%B%n%b@%m %~`git-prompt`%(!.#.>) '
