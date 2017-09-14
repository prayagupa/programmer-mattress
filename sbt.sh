sbt_version=0.13.9

wget https://dl.bintray.com/sbt/native-packages/sbt/$sbt_version/sbt-$sbt_version.zip
sudo unzip sbt-$sbt_version.zip -d /usr/local/

cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### SBT #############
  ###############################
  SBT_HOME=/usr/local/sbt
  export SBT_HOME
  export PATH=$PATH:$SBT_HOME/bin
EOF

echo ""
echo "[info] : reloading $HOME/.bash_profile."	
echo ""
source ~/.bash_profile

echo "remove sbt-${sbt_version}"
rm sbt-$sbt_version.zip
