#!/bin/bash
#nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

echo "start-all.sh"

i=0
for host in `cat $HOSTS`; do
  if [[ $i -lt $1 ]]; then
    sshpass -p vagrant ssh -oStrictHostKeyChecking=no vagrant@$host $QUO_HOME/start-mining.sh $1
    echo done node $host
  fi
  let i=$i+1
done
