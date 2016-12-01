wget http://smarden.org/runit/runit-2.1.2.tar.gz
tar -zxvf runit-2.1.2.tar.gz
rm runit-2.1.2.tar.gz

cd admin/runit-2.1.2

echo 'cc -Xlinker -x' > src/conf-ld
cp src/Makefile src/Makefile.old
sed -e 's/ -static//' < src/Makefile.old > src/Makefile

sudo package/install
sudo package/install-man

cd
