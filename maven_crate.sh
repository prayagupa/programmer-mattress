maven_version=3.3.9
unzipped="apache-maven-$maven_version"
file="apache-maven-$maven_version-bin.tar.gz"
maven_url="http://apache.mirrors.tds.net/maven/maven-3/3.3.9/binaries/$file"

echo "downloading from $maven_url"

wget $maven_url
tar -zxvf $file
sudo mv $unzipped /usr/local/
sudo chmod -R +x /usr/local/$unzipeped

 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### maven##############
  ###############################
  MAVEN_HOME=/usr/local/apache-maven-3.3.9
  export MAVEN_HOME
  export PATH=$PATH:$MAVEN_HOME/bin
EOF

source ~/.bash_profile
