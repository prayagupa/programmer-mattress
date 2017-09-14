DEFAULT_SOURCE_ROOT_JVM="$HOME"
DEFAULT_INSTALLATION_DEST="/usr/local/"

installScala(){
 SCALA_VERSION="2.12.3"
 WGET_URL="http://www.scala-lang.org/files/archive/scala-$SCALA_VERSION.tgz"
 SCALA_LOCATION_SOURCE="${DEFAULT_SOURCE_ROOT_JVM}/scala-$SCALA_VERSION.tgz"
 wget -O $SCALA_LOCATION_SOURCE --no-clobber $WGET_URL

 sudo tar -zxvf ${SCALA_LOCATION_SOURCE} -C ${DEFAULT_INSTALLATION_DEST}
 sudo chmod 777 -R ${DEFAULT_INSTALLATION_DEST}/scala-$SCALA_VERSION

 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### SCALA #############
  ###############################
  SCALA_HOME=/usr/local/scala-2.12.3
  export SCALA_HOME
  export PATH=$PATH:$SCALA_HOME/bin
EOF

   echo ""
   echo "[info] : reloading $HOME/.bash_profile."	
   echo ""
   source ~/.bash_profile

 echo "##################################################"
 echo "[info] : scala $SCALA_VERSION is installed successfully."
 echo "##################################################"

}

installScala

