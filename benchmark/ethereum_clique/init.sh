#!/bin/bash
#args: number_of_nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

echo "init.sh"
mkdir -p $QUO_DATA/{keystore,geth}

let i=$1+1


cp keys/key$i $QUO_DATA/keystore
echo keys/key$i
cp raft/static-nodes$2.json $QUO_DATA/static-nodes.json
cp raft/nodekey$i $QUO_DATA/geth/nodekey
#${QUORUM} --datadir=$QUO_DATA init $QUO_HOME/clique-genesis.json

#cat static-nodes/static-nodes$2.json
#echo static-nodes/static-nodes$2.json
#echo nodekey/nodekey$2/$1/nodekey
geth --nousb --datadir=$QUO_DATA init $QUO_HOME/clique-genesis.json
#geth --nousb --datadir=$QUO_DATA --password <(echo -n "") account new
#${QUORUM} --datadir=$QUO_DATA account new --password <(echo -n "")





