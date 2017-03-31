DEFAULT_INSTALLATION_DEST=/opt

installElasticsearch(){
   VERSION_ES="2.1.0"
   #URL="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$VERSION_ES.tar.gz"
   URL="https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-$VERSION_ES.tar.gz"
   echo "downloading from $URL"
   wget $URL

   sudo mkdir -p /opt/elasticsearch-$VERSION_ES
   sudo chmod -R 777 /opt/elasticsearch-$VERSION_ES
   ES_HOME=$DEFAULT_INSTALLATION_DEST/elasticsearch-$VERSION_ES
   sudo tar -zxvf elasticsearch-$VERSION_ES.tar.gz -C $DEFAULT_INSTALLATION_DEST
   sudo chmod -R ugo+rw $ES_HOME
   #$ES_HOME/bin/plugin -i elasticsearch/marvel/latest
}

installElasticsearch
