#!/bin/bash
#nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

rm -rf addPeer.txt
./gather.sh $1
sleep 3
i=0
for host in `cat $HOSTS`; do
  if [[ $i -lt $1 ]]; then
    sshpass -p vagrant scp addPeer.txt vagrant@$host:$ETH_HOME
    sshpass -p vagrant ssh -oStrictHostKeyChecking=no vagrant@$host $ETH_HOME/start-mining.sh
    echo done node $host
  fi
  let i=$i+1
done
