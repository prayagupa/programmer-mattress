#https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-7-on-ubuntu-14-04-via-apt-get

sudo apt-get update
sudo apt-get install tomcat7

##make me work
# echo JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC" >> /etc/default/tomcat7

sudo service tomcat7 restart

sudo apt-get install tomcat7-docs tomcat7-admin tomcat7-examples

sudo service tomcat7 restart
echo "please add admin user to tomcat-users.xml with proper roles manually."
echo "and restart tomcat7"
