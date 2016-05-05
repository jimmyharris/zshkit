export PROMPT="%# "
export RPROMPT=""
fpath=($ZSHKIT/zsh-git/functions $fpath)
typeset -U fpath
setopt prompt_subst
autoload -U colors
autoload -U promptinit
promptinit
prompt wunjo
