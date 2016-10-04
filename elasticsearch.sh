DEFAULT_INSTALLATION_DEST=/opt/
installElasticsearch(){
   VERSION_ES="2.4.0"
   URL = "https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$VERSION_ES/elasticsearch-$VERSION_ES.tar.gz"
   echo "downloading from $URL"
   ES_HOME=$DEFAULT_INSTALLATION_DEST/elasticsearch-$ES_VERSION
   sudo tar -zxvf elasticsearch-$VERSION_ES.tar.gz -C $DEFAULT_INSTALLATION_DEST
   sudo chmod -R ugo+rw $ES_HOME
   #$ES_HOME/bin/plugin -i elasticsearch/marvel/latest
}

installElasticsearch
