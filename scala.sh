DEFAULT_SOURCE_ROOT_JVM="$HOME"
DEFAULT_INSTALLATION_DEST="/usr/local/"

installScala(){
 SCALA_VERSION="2.11.8"
 WGET_URL="http://www.scala-lang.org/files/archive/scala-$SCALA_VERSION.tgz"
 SCALA_LOCATION_SOURCE="${DEFAULT_SOURCE_ROOT_JVM}/scala-$SCALA_VERSION.tgz"
 wget -O $SCALA_LOCATION_SOURCE --no-clobber $WGET_URL

 sudo tar -zxvf ${SCALA_LOCATION_SOURCE} -C ${DEFAULT_INSTALLATION_DEST}
 sudo chmod 777 -R ${DEFAULT_INSTALLATION_DEST}/scala-$SCALA_VERSION

 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### SCALA #############
  ###############################
  SCALA_HOME=/usr/local/scala-2.11.8
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

installPlayFramework(){
	PLAY_VERSION="2.2.2"
	PLAY_URL="http://downloads.typesafe.com/play/$PLAY_VERSION/play-$PLAY_VERSION.zip"
	wget $PLAY_URL  -P $DEFAULT_SOURCE_ROOT_JVM/scala/
	sudo unzip  $DEFAULT_SOURCE_ROOT_JVM/scala/play-$PLAY_VERSION -d $DEFAULT_INSTALLATION_DEST
 setPermissionRWE $DEFAULT_INSTALLATION_DEST/play-$PLAY_VERSION
 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### play #############
  ###############################
  PLAY_HOME=/usr/local/play-2.2.2
  export PLAY_HOME
  export PATH=$PATH:$PLAY_HOME/
EOF

 reloadProfileConf
 showMessage "play" $PLAY_VERSION
}

