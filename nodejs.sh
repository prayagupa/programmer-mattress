wget -O nodejs.tar.xz https://nodejs.org/dist/v4.6.0/node-v4.6.0-linux-x64.tar.xz
tar -xvf nodejs.tar.xz
sudo mv node-v4.6.0-linux-x64 /usr/local/nodejs
sudo chmod -R 777 /usr/local/nodejs

export NODE_HOME=/usr/local/nodejs
export PATH=$PATH:$NODE_HOME/bin

source ~/.bash_profile
