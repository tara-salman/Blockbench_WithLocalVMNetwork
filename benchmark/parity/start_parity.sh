#!/bin/bash
CHAIN_DATA=$1
KEYS=$CHAIN_DATA/keys/PoA
HOST=$2
LOGS=$3
PARITY=$4
IDX=$5
cd `dirname ${BASH_SOURCE-$0}`

# remove chain data
rm -rf $CHAIN_DATA
mkdir -p $KEYS
mkdir -p $LOGS
# copy keys
cp keys/key* $KEYS/

nohup parity --config config.toml.$IDX --nat extip:$HOST --jsonrpc-port 8008 --jsonrpc-interface $HOST > $LOGS/log 2>&1 & 
echo parity started
