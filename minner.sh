#!/bin/bash
apt-get update -y
  apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++
apt-get install  build-essential -y
apt-get install libcurl4-openssl-dev g++ gcc -y

 apt-get install autotools-dev autoconf -y
 apt-get install libcurl3 libcurl4-gnutls-dev -y

git clone https://github.com/OhGodAPet/cpuminer-multi.git
cd cpuminer-multi
chmod +x autogen.sh
./autogen.sh
./configure CFLAGS="-O3" --with-crypto --with-curl 
make && make install 
cd cpuminer-multi 
  screen ./cpuminer -a scrypt -o stratum+tcp://scrypt.eobot.com:4444 --userpass eobot.1149745:x
 
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Programas instalados.
