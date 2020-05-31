#!/bin/bash
cd `dirname ${BASH_SOURCE-$0}`
. env.sh
echo "start-mining" 
nohup ${QUORUM} --datadir $QUO_DATA --nodiscover --raft --rpc --rpcaddr 0.0.0.0 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum --emitcheckpoints --rpcport 8000 --port 9000 --raftport 50400 --raftblocktime 50 --mine --permissioned --unlock 0 --password <(echo -n "") > $QUO_DATA/../raft_quorum_log 2>&1 &
#echo --datadir $QUO_DATA --rpc --rpcaddr 0.0.0.0 --rpcport 8000 --port 9000 --raft --raftport 50400 --raftblocktime 2000 --unlock 0 --password <(echo -n "") 
