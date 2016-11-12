DEFAULT_SOURCE_ROOT=$HOME
DEFAULT_INSTALLATION_DEST=/usr/local

installIntelliJ(){

# http://stackoverflow.com/a/30131216

# Fetch the most recent version
edition=C
IDEA_VERSION=$(wget "https://www.jetbrains.com/intellij-repository/releases" -qO- | grep -P -o -m 1 "(?<=https://www.jetbrains.com/intellij-repository/releases/com/jetbrains/intellij/idea/BUILD/)[^/]+(?=/)")

# Prepend base URL for download
URL="https://download.jetbrains.com/idea/ideaI$edition-$IDEA_VERSION.tar.gz"

echo $URL

# Truncate filename
FILE=$(basename ${URL})

# Set download directory
SOURCE_LOCATION="$DEFAULT_SOURCE_ROOT/$FILE"

echo "Downloading idea-I$edition-$VERSION to $SOURCE_LOCATION."

# Download binary
wget -cO ${SOURCE_LOCATION} ${URL} --read-timeout=5 --tries=0

echo "Download complete!"

DEST_FOLDER="idea-I$edition-$IDEA_VERSION"

  sudo tar -zxvf $SOURCE_LOCATION -C $DEFAULT_INSTALLATION_DEST
  sudo chmod 777 -R $DEFAULT_INSTALLATION_DEST/$DEST_FOLDER
  
  echo " ####################################################################"
  echo " [info] : Intellij is installed to $DEFAULT_INSTALLATION_DEST."
  echo " ####################################################################"

sudo tee -a $DEFAULT_INSTALLATION_DEST/$DEST_FOLDER/bin/studio64.vmoptions >/dev/null << 'EOF'
	cat >> << 'EOF'
	-Xms1024m
	-Xmx1024m
	-XX:MaxPermSize=1024m
	-XX:ReservedCodeCacheSize=96m
	-ea
	-Dsun.io.useCanonCaches=false
	-Djava.net.preferIPv4Stack=true
	-XX:+UseCodeCacheFlushing
	-XX:+UseConcMarkSweepGC
	-XX:SoftRefLRUPolicyMSPerMB=50
	-XX:+HeapDumpOnOutOfMemoryError
	-Dawt.useSystemAAFontSettings=lcd
EOF
}

installIntelliJ
