installPlayFramework(){
	PLAY_VERSION="2.5.10"
	PLAY_URL="https://downloads.typesafe.com/typesafe-activator/1.3.12/typesafe-activator-1.3.12.zip"
	sudo wget $PLAY_URL  -P /usr/local/
	sudo unzip  /usr/local/typesafe-activator-1.3.12.zip -d /usr/local/
  sudo chmod -R 777 /usr/local/typesafe-activator-1.3.12
 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### play #############
  ###############################
  PLAY_HOME=/usr/local/typesafe-activator-1.3.12
  export PLAY_HOME
  export PATH=$PATH:$PLAY_HOME/
EOF

 source ~/.bash_profile
 echo "Play-$PLAY_VERSION - streamy installed"
}

installPlayFramework
