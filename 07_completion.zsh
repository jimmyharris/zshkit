# Files to ignore during completion
fignore=(DS_Store $fignore)

# From OSX zsh templates  
# http://code.google.com/p/zsh-templates-osx/

# enable menu selection
zstyle ':completion:*' menu select=10

# General completion technique
zstyle ':completion:*' completer _complete _approximate _prefix

# Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

# Expand partial paths
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

# Don't complete backup files as executables
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'

# Separate matches into groups
zstyle ':completion:*:matches' group 'yes'

# Describe each match group.
zstyle ':completion:*:descriptions' format "%B---- %d%b"

# Messages/warnings format
zstyle ':completion:*:messages' format '%B%U---- %d%u%b'
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b'

# Describe options in full
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'


zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes


# LS Colours
zmodload -i zsh/complist

zstyle ':completion:*' list-colors ''

zstyle ':completion:*:*:kill:*:processes' list-colors \
	'=(#b) #([0-9]#)*=0=01;31'

# completion colours
zstyle ':completion:*' list-colors "$LS_COLORS"

if [[ -o login ]]; then

  if [[ ! -h $ZSHKIT/func/_rvm ]]; then
    if [[ -f /usr/local/rvm/scripts/zsh/Completion/_rvm ]]; then
      ln -s "/usr/local/rvm/scripts/zsh/Completion/_rvm" $ZSHKIT/func/_rvm
    fi
    if [[ -f $HOME/.rvm/scripts/zsh/Completion/_rvm ]]; then
      ln -s "$HOME/.rvm/scripts/zsh/Completion/_rvm" $ZSHKIT/func/_rvm
    fi
  fi
  if [[ -f "/usr/local/Library/Contributions/brew_zsh_completion.zsh" ]]; then
    if [[ ! -h $ZSHKIT/func/_brew ]]; then
      ln -s "/usr/local/Library/Contributions/brew_zsh_completion.zsh" $ZSHKIT/func/_brew
    fi
  fi

  if [[ -e `which pip` ]]; then
    if [[ ! -d "$ZSHKIT/zsh-pip-completion" ]]; then
      echo 'For better PyPI completion in zsh please run:'
      echo ''
      if [[ -e `which github` ]]; then
        echo '	cd $ZSHKIT'
        echo '	github clone jimmyharris zsh-pip-completion'
      else
        echo '	cd $ZSHKIT'
        echo '	git clone git://github.com/jimmyharris/zsh-pip-completion.git'
        echo ''
      fi
      eval `pip completion --zsh`
    else
      fpath=($ZSHKIT/zsh-pip-completion $fpath)
      typeset -U fpath
    fi
  fi

fi
