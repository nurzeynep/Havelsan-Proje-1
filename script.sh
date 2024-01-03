#!/bin/bash

if [ $1 -eq "kur" ]; then
NODE_MAJOR=18

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -O- https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor > pgsql.gpg
sudo mv pgsql.gpg /etc/apt/trusted.gpg.d/pgsql.gpg

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -O- https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor > pgsql.gpg
sudo mv pgsql.gpg /etc/apt/trusted.gpg.d/pgsql.gpg

fi

if [ $1 -eq "kaldır" ]; then
    apt --remove liman-2.0-RC2-863.deb
fi

if [ $1 -eq "administrator"]; then
    sudo limanctl administrator
fi

if [ $1 -eq "help" ]; then 
    HAVELSAN Liman Merkezi Yönetim Sistemi(MYS) 2.0 sürümü ile görsel ve özellik olarak zenginleşen ürünü kurmak için aşağıdaki adımları takip edebilirsiniz.

Liman MYS 2.0 sürümünü kurmak için öncelikle NodeJS güncel repolarını sistemimize eklememiz gerekiyor. Node 18 versiyon ve sonrası kullanılması önerilmektedir.
    ./liman.sh kur -> Limanı Kurar
    ./liman.sh kaldır -> Limanı Kaldırır
    ./liman.sh adminastor -> sudo limanctl reset adminastrator@liman.dev
    ./liman.sh help -> Nasıl Kullanılacağını yazsın

fi
