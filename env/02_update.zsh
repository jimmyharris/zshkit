if [[ -x `which git` ]]; then
  function zshkit-update () {
    # TODO: verify that zshkit is properly installed.
    pushd $HOME
    pushd $ZSHKIT
    git pull
    git submodule update --init
    popd
    source .zshrc
    source .zshenv
    popd
  }
fi
