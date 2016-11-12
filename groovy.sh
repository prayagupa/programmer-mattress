installGrails(){
 GRAILS_TOOL="grails"
 GRAILS_VERSION="2.4.0"
 GRAILS_DOWNLOAD_URL="http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-${GRAILS_VERSION}.zip"
 GRAILS_LOCATION_SOURCE="$DEFAULT_SOURCE_ROOT/$GRAILS_TOOL-$GRAILS_VERSION.zip"
 
 if [ ! -e $GRAILS_LOCATION_SOURCE ]; then
	   wgetIt $GRAILS_DOWNLOAD_URL
 else 
	   echo "[info] : ${GRAILS_LOCATION_SOURCE} already exists."
 fi

 unzipIt $GRAILS_LOCATION_SOURCE
 setPermissionRWE $DEFAULT_INSTALLATION_DEST/$GRAILS_TOOL-$GRAILS_VERSION

cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### grails #############
  ###############################
  GRAILS_HOME=/usr/local/grails-2.4.0
  export GRAILS_HOME
  export PATH=$PATH:$GRAILS_HOME/bin
EOF

 reloadProfileConf
 showMessage $TOOL $GRAILS_VERSION
}


