#!/bin/bash

if [ $1 -eq "kur" ]; then
NODE_MAJOR=18

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

if [$? -eq 0]; then
    echo keyring oluşturuldu
fi
else if ;
    echo başarısız

if ca-certificates installed; then
    echo basarılı
fi 
else if ca-certificates not installed; then
    echo ca-certificates not created
fi

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -O- https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor > pgsql.gpg
sudo mv pgsql.gpg /etc/apt/trusted.gpg.d/pgsql.gpg

if software-properties-common installed; then
    echo basarılı
fi

else if ;
    echo basarısız
fi

sudo apt update
wget https://github.com/limanmys/core/releases/download/release.feature-new-ui.863/liman-2.0-RC2-863.deb
apt install ./liman-2.0-RC2-863.deb

if ./liman-2.0-RC2-863.deb installed; then
    echo basarılı
else if ;
    echo basarısız

wget
echo "$(date) $(date +%T) log" >> /var/log/liman-kur.log

fi

else if [ $1 -eq "kaldır" ]; then
    apt --remove liman-2.0-RC2-863.deb
    rm -rf /liman
fi

else if [ $1 -eq "administrator"]; then
    sudo limanctl administrator
fi

else if [ $1 -eq "reset"]; then
    sudo limanctl reset administrator@liman.dev
fi



else if [ $1 -eq "help" ]; then 
    echo "HAVELSAN Liman Merkezi Yönetim Sistemi(MYS) 2.0 sürümü ile görsel ve özellik olarak zenginleşen ürünü kurmak için aşağıdaki adımları takip edebilirsiniz. Liman MYS 2.0 sürümünü kurmak için öncelikle NodeJS güncel repolarını sistemimize eklememiz gerekiyor. Node 18 versiyon ve sonrası kullanılması önerilmektedir."
    echo "usage ./liman.sh <kur|kaldır|administrator|help>"
    echo "kur HAVELSAN Liman MYS ürününün kuulumunu gerçekleştirir"
    ....

fi

