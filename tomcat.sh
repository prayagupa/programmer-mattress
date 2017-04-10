#https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-7-on-ubuntu-14-04-via-apt-get

wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.12.tar.gz
tar zxvf apache-tomcat-8.5.12.tar.gz
sudo mv apache-tomcat-8.5.12 /usr/local/
sudo chmod -R 777 /usr/local/apache-tomcat-8.5.12

 cat >> ~/.bash_profile <<'EOF'
  ###############################
  ########### TOMCAT ###############
  ###############################
  CATALINA_HOME=/usr/local/apache-tomcat-8.5.12
  export CATALINA_HOME
  export PATH=$PATH:$CATALINA_HOME/bin
EOF

source ~/.bash_profile

echo "Mr. Tom aka cat is installed at $CATALINA_HOME"

function ubuntu(){
sudo apt-get update
sudo apt-get install tomcat7

##make me work
# echo JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC" >> /etc/default/tomcat7

sudo service tomcat7 restart

sudo apt-get install tomcat7-docs tomcat7-admin tomcat7-examples

sudo service tomcat7 restart
echo "please add admin user to tomcat-users.xml with proper roles manually."
echo "and restart tomcat7"

}

