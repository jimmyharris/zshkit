if [[ $OSTYPE == "linux-gnu" ]]; then
  if [[ -d "/usr/lib/jvm/java-7-oracle" ]]; then
    JAVA_HOME="/usr/lib/jvm/java-7-oracle"
  elif [[ -d "/usr/lib/jvm/java-1.7.0-openjdk-amd64" ]]; then
    JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-amd64"
  elif [[ -d "/usr/lib/jvm/java" ]]; then
    JAVA_HOME="/usr/lib/jvm/java"
  else
    JAVA_HOME="/usr/lib/jvm/jre"
  fi
  export JAVA_HOME
elif [[ $OSTYPE[1,6] == "darwin" ]]; then
  JAVA_HOME=`/usr/libexec/java_home`
  export JAVA_HOME
fi
