#!/bin/zsh

zplug "chrissicool/zsh-256color"
zplug "chriskempson/base16-shell", \
  use:"scripts/base16-default-dark.sh"
zplug "joel-porquet/zsh-dircolors-solarized"

# Python virtualenv support. 
zplug "jimmyharris/virtualz", at:"fix_virtualz_dir"

# Additional zsh completions.
zplug "zsh-users/zsh-completions"

# Prompt. (lock at this version untill timestamp bug is fixed.)
# zplug "frmendes/geometry", at:c8ec1b63d91834cd9f9bd5b345f6ca8d097301f8, \
  # use:"geometry.zsh"
zplug "mafredri/zsh-async", on:"sindresorhus/pure"
zplug "sindresorhus/pure", use:"pure.zsh"

# Load local configuration after other plugins but pre-compinit. 
zplug "$ZSHKIT/rc", \
  from:"local", \
  use:"**/*.(sh|zsh)", \
  nice:1

# Load Post compinit plugins
zplug "zsh-users/zsh-syntax-highlighting", \
  nice:11
