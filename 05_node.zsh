if [[ (-d "/usr/local/lib/node") ]]; then
  NODE_PATH="/usr/local/lib/node"
  path=(/usr/local/share/node/npm/bin $path)
  export NODE_PATH
fi

