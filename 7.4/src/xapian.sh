#! /bin/bash
# Compile Xapian
# Change this to the PHP 7.x version you want to build for.
v=7.4
sudo apt-get update
sudo apt-get build-dep xapian-bindings
sudo apt-get install devscripts php$v-dev php$v-cli
apt-get source xapian-bindings
cd xapian-bindings-1.4.*
echo php7 > debian/bindings-to-package
debian/rules maint PHP7_VERSIONS=$v
debuild -e PHP7_VERSIONS=$v -us -uc 
cd ..