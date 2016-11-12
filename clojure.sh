installClj(){
      sudo wget -O /usr/local/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein      
      sudo chmod +x /usr/local/bin/lein 
      #lein --version
}

installImmutant(){
	immutant_version="1.1.1"
	wget http://repository-projectodd.forge.cloudbees.com/release/org/immutant/immutant-dist/1.1.1/immutant-dist-$immutant_version-slim.zip -P ~/.lein

}
