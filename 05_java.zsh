if [[ $OSTYPE == "linux-gnu" ]]; then
  if [[ -d "/usr/lib/jvm/java" ]]; then
    JAVA_HOME="/usr/lib/jvm/java"
  else
    JAVA_HOME="/usr/lib/jvm/jre"
  fi
  export JAVA_HOME
elif [[ $OSTYPE[1,6] == "darwin" ]]; then
  JAVA_HOME=`/usr/libexec/java_home`
  export JAVA_HOME
fi
