wget https://dl.bintray.com/sbt/native-packages/sbt/0.13.13/sbt-0.13.13.zip
sudo unzip sbt-0.13.13.zip -d /usr/local/
sudo mv /usr/local/sbt-launcher-packaging-0.13.13 /usr/local/sbtool

cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### SBT #############
  ###############################
  SCALA_HOME=/usr/local/sbtool
  export SBT_HOME
  export PATH=$PATH:$SBT_HOME/bin
EOF

echo ""
echo "[info] : reloading $HOME/.bash_profile."	
echo ""
source ~/.bash_profile


