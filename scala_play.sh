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
