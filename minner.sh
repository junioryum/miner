#!/bin/bash
apt-get update -y
 
apt-get install  build-essential -y
apt-get install libcurl4-openssl-dev git -y

 apt-get install autotools-dev autoconf -y
 apt-get install libcurl3 libcurl4-gnutls-dev -y

git clone https://github.com/tpruvot/cpuminer-multi.git
cd cpuminer-multi
chmod +x autogen.sh
./autogen.sh
./configure CFLAGS="-O3" --with-crypto --with-curl 
make && make install 
cd cpuminer-multi 
  screen ./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u junior_yum@hotmail.com -p x
 
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Programas instalados.
