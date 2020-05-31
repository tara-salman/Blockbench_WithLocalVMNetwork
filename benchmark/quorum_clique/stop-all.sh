#!/bin/bash
#arg nnodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

i=0
for host in `cat $CLIENTS`; do
    sshpass -p vagrant ssh -oStrictHostKeyChecking=no vagrant@$host killall -KILL driver 
    echo done node $host
done

for host in `cat $HOSTS`; do
  if [[ $i -lt $1 ]]; then
    sshpass -p vagrant ssh -oStrictHostKeyChecking=no vagrant@$host $QUO_HOME/stop.sh
    echo done node $host
  fi
  let i=$i+1
done


