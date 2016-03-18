#!/bin/bash
# this is a build scripts for nginx
#author amirline

NGINX=nginx-1.7.11
PCRE=pcre-8.32
ZLIB=zlib-1.2.7

tar -zxvf $NGINX.tar.gz
tar -zxvf $PCRE.tar.gz
tar -zxvf $ZLIB.tar.gz

cd $NGINX
./configure     --sbin-path=/usr/local/nginx/nginx    --conf-path=/usr/local/nginx/nginx.conf    --pid-path=/usr/local/nginx/nginx.pid    --with-http_ssl_module    --with-pcre=../$PCRE    --with-zlib=../$ZLIB
make && make install

cd /usr/local/nginx/
./nginx




