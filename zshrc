typeset -gx ZPLUG_HOME=$ZSHKIT/zplug
if [ ! -s "$ZPLUG_HOME/init.zsh" ]; then
  cd $ZSHKIT
  git submodule update --init --recursive
fi

source $ZPLUG_HOME/init.zsh

# Load all plugins
source $ZSHKIT/packages.zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Make sure paths don't grow endlessly with subshells.
typeset -U path fpath
