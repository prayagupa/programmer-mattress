
####################################################################
################JDK#################################################
####################################################################

DEFAULT_SOURCE_ROOT="$HOME"
DEFAULT_INSTALLATION_DEST="/usr/local"

installJdk(){
 JDK_VERSION="1.8.0"
 JDK_LOCATION_SOURCE="$DEFAULT_SOURCE_ROOT/jdk$JDK_VERSION"
  
 # Testing java installation
 command -v java -version >/dev/null 2>&1
 INSTALLED=$?
 echo ""

 # Checking java if installed
 if [ -n "$INSTALLED" ] ; then
    JDK_DOWNLOAD_URL="http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz"
   
    if [ ! -e $JDK_LOCATION_SOURCE ]; then
	echo "download JDK manually to $HOME first from oracle.com/technetwork/java/javase/downloads because Oracle is stupid SOAB.";
        echo "example download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz"
    else
    sudo mv $JDK_LOCATION_SOURCE  $DEFAULT_INSTALLATION_DEST
    sudo chmod 777 -R $DEFAULT_INSTALLATION_DEST/jdk$JDK_VERSION/

 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### JDK ###############
  ###############################
  JAVA_HOME=/usr/local/jdk1.8.0
  export JAVA_HOME
  export PATH=$PATH:$JAVA_HOME/bin
EOF

   source ~/.bash_profile

   echo "####################################################"
   echo "[info] : jdk $JDK_VERSION is installed successfully."
   echo "####################################################"
 fi
 fi
}
