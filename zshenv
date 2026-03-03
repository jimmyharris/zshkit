source $ZSHKIT/env/path.zsh

local_env="$ZSHKIT/env/local"

for script in $local_env/*.(sh|zsh)(N); do
  script_path="$local_env/$script_path"
  if [ -s "$script_path" ]; then
    source $script_path
  fi
done
