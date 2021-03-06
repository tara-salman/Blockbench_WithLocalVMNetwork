#!/bin/bash
#nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

echo "start-all.sh"
#rm -rf addPeer.txt
#./gather.sh $1
#sleep 3

i=0
for host in `cat $HOSTS`; do
  if [[ $i -lt $1 ]]; then
    echo $i
    sshpass -p vagrant scp addPeer.txt vagrant@$host:$QUO_HOME
    sshpass -p vagrant ssh -oStrictHostKeyChecking=no vagrant@$host $QUO_HOME/start-mining.sh $i
    echo done node $host
  fi
  let i=$i+1
done
i=0
for host in `cat $HOSTS`; do
  if [[ $i -lt $1 ]]; then
    sshpass -p vagrant ssh -oStrictHostKeyChecking=no  $host $QUO_HOME/start-addPeer.sh $i
    echo done node $host
  fi
  let i=$i+1
done
