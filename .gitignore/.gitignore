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
 ./minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u junior_yum@hotmail.com -p x
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Programas instalados.
