#!/bin/bash
ip_addr=$1
echo $ip_addr
QUORUM=/home/vagrant/blockbench/benchmark/quorum_clique/quorum/build/bin/geth
QUO_HOME=/home/vagrant/blockbench/benchmark/quorum_clique
QUO_DATA=/home/vagrant/quorum_clique
. $QUO_HOME/env.sh

geth --nousb --allow-insecure-unlock --datadir=$QUO_DATA --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --networkid 9119 --unlock 0 --password <(echo -n "") js <(echo 'console.log(admin.nodeInfo.enode);') 2>/dev/null |grep enode | perl -pe "s/\[\:\:\]/$ip_addr/g" | perl -pe "s/^/\"/; s/\s*$/\"/;"

