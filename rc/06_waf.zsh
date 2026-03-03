waf() {
  if [[ -x "./waf" ]]; then
    $PWD/waf $@
  else
    echo "Waf not found in current directory."
  fi
}
