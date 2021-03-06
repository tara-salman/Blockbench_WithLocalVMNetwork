#!/bin/bash
#arg num_nodes #num_threads num_clients tx_rate sim_time sim_number [-drop]
cd `dirname ${BASH_SOURCE-$0}`
. env.sh
for j in {1..$6}
do
  ./stop-all.sh $1 

  ./init-all.sh $1 
  ./start-all.sh $1 

  let M=250+40*$1
  sleep $M

  ./start-multi-clients.sh $3 $1 $2 $4 $5 $j $7
#BACK=$!
#sleep 100
#python partition.py $1
#wait $BACK
#./start-multi-clients.sh clients_$1 $1 $2
#./start-multi-clients.sh clients_8 $1 $2
done
./stop-all.sh $1

sleep 5

