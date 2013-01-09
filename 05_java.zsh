if [[ $OSTYPE == "linux-gnu" ]]; then
  JAVA_HOME="/usr/java/default"
  export JAVA_HOME
elif [[ $OSTYPE[1,6] == "darwin" ]]; then
  JAVA_HOME=`/usr/libexec/java_home`
  export JAVA_HOME
fi
