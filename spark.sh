
installSpark(){
 wget http://d3kbcqa49mib13.cloudfront.net/spark-1.1.1.tgz -P /packup/repo.softwares/
 sudo tar -zxvf spark-1.1.1.tgz -C /usr/local
 cd /usr/local/spark-1.1.1
 sbt/sbt assembly
}

installSpark
