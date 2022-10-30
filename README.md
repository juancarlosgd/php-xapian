# php-xapian
php-xapian library compilation procedure for php 7.4 and debian 10 or newer. This procedure has been verified on debian 10 and 11.

## Prerequisites for instalation
libxapian30 - Search engine library

### Install via apt
the following command must be executed with su or sudo permission
apt install libxapian

### Install package from source
https://debian.pkgs.org/11/debian-main-arm64/libxapian30_1.4.18-3_arm64.deb.html

## Install deb file - Install and configure the xapian.so library in php
1. Clone this repository
2. Execute deb file for php 7.4 with su or sudo permision. sudo dpkg -i php7-xapian_1.4.18-1_amd64.deb
3. reload php service

## Compile and install from source
1. Clone this repository
2. Modify the bash file with the version of php you have installed.
3. Execute bash file with su or sudo permision. sudo ./xapian.sh
4. You will find the compiled deb file in the same directory where you ran the bash file.
5. Execute deb file with su or sudo permision.
6. reload php service
