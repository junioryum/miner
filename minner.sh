#!/bin/bash
apt-get update -y
apt-get install libcurl4-openssl-dev git -y
apt-get install  build-essential -y
 apt-get install autotools-dev autoconf -y
 apt-get install libcurl3 libcurl4-gnutls-dev -y

git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
chmod +x autogen.sh
./autogen.sh
CFLAGS="-march=native" ./configure
make && make install 
cd cpuminer-multi 
  screen ./minerd -a scrypt -o stratum+tcp://scrypt.eobot.com:4444 --userpass eobot.1149745:x 
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Programas instalados.
