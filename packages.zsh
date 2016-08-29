#!/bin/zsh

zplug "chrissicool/zsh-256color"
zplug "chriskempson/base16-shell", \
  use:"scripts/base16-default-dark.sh"
zplug "joel-porquet/zsh-dircolors-solarized"

# Python virtualenv support. 
zplug "jimmyharris/virtualz", at:"fix_virtualz_dir"

# Additional zsh completions.
zplug "zsh-users/zsh-completions"

# Prompt.
zplug "frmendes/geometry", \
  use:"geometry.zsh"

# Load local configuration after other plugins but pre-compinit. 
zplug "$ZSHKIT/rc", \
  from:"local", \
  use:"**/*.(sh|zsh)", \
  nice:1

# Load Post compinit plugins
zplug "zsh-users/zsh-syntax-highlighting", \
  nice:11
