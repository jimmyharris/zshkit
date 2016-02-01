# BASE16_SHELL="$ZSHKIT/base16-shell/base16-default.dark.sh"
# [[ -s $BASE16_SHELL  ]] && source $ZSHKIT/base16-shell/base16-default.dark.sh
autoload -Uz compinit && compinit
compdef _git g=git
autoload -Uz colors
colors
