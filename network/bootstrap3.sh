#!/bin/bash
set -eu -o pipefail

#install npm
#sudo apt-get install -y nodejs
#sudo apt-get install -y npm
#sudo apt-get install -y sshpass

# install golang
#GOREL=go1.9.3.linux-amd64.tar.gz
#wget -q https://dl.google.com/go/$GOREL
#tar xfz $GOREL
#if [ ! -e "/usr/local/go" ]; then
#    mv go /usr/local/go
#fi
#rm -f $GOREL
#PATH=$PATH:/usr/local/go/bin
#echo 'PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bashrc

# install restclient-cpp
#sudo apt-get update
#RESTAPI=restclient-cpp
#sudo apt-get install -y dh-autoreconf
#sudo apt-get install -y libcurl4-openssl-dev
#git clone https://github.com/mrtazz/restclient-cpp
#cd $RESTAPI
#./autogen.sh
#./configure
#sudo make install
#cd /home/vagrant
#sudo chmod 700 /home/vagrant
# get blockbench
#git clone https://tarasalman@bitbucket.org/tarasalman/blockbench.git/
#sudo chmod 777 -R blockbench
#mv blockbench /home/vagrant
#cd blockbench/src/micro
#sudo npm install 
#cd ../macro/smallbank
#sudo make 
#cd /home/vagrant/blockbench/benchmark/ethereum/
#sudo ./install.sh
#cd ../quorum_vote
#./install.sh

#sudo ldconfig -v
#cd ../hyperledger
#sudo ./install.sh

#PARITY 
sudo apt-get update  -y -qq
sudo apt-get install -y -qq curl
PARITY_DEB_URL=https://github.com/paritytech/parity-ethereum/releases/download/v1.4.0/parity_1.4.0_amd64.deb
file=/tmp/parity.deb
curl -Lk $PARITY_DEB_URL > $file
sudo dpkg -i $file
rm $file


#cd /home/vagrant
#sudo apt-get install -y build-essential cmake libudev-dev
#sudo apt-get install build-essential software-properties-common -y
#sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y 
#sudo apt-get update
#sudo apt-get install gcc-snapshot -y 
#sudo apt install -y cargo

#bash <(curl https://get.parity.io -L) -r stable

#git clone https://github.com/paritytech/parity-ethereum
#cd parity-ethereum/
#sudo apt-get remove -y rustc
#curl https://sh.rustup.rs -sSf | sudo sh -s -- -y
#source $HOME/.cargo/env
#sudo cargo build --release --features  final --verbose





