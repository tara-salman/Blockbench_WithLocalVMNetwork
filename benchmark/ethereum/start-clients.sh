#!/bin/bash
# args=THREADS index N txrate sim_time sim_number
echo IN START_CLIENTS $1 $2 $3 $4

cd `dirname ${BASH_SOURCE-$0}`
. env.sh

#LOG_DIR=$ETH_HOME/../src/ycsb/exp_$3"_"servers_run4
LOG_DIR=$LOG_DIR/exp_$3"_"servers_$1"_"threads_$4"_"rates
if [ ! -d $LOG_DIR ]; then 
  mkdir -p $LOG_DIR
fi


i=0

#for j in $6 ; do
for host in `cat $HOSTS`; do
  let n=i/2
  let i=i+1


  if [[ $n -eq $2 ]]; then
    #cd $ETH_HOME/../src/ycsb
    cd $EXE_HOME
    #both ycsbc and smallbank use the same driver
    #./driver -db ethereum -ops 1000 -threads 4 -txrate 100 -st 60 -fp stat.txt -endpoint 127.0.0.1:8000
    nohup ./driver -db ethereum -ops 1000 -threads $1 -txrate  $4 -st $5 -fp stat.txt -endpoint $host:8000 > $LOG_DIR/client_$host"_"$1"_"$6 2>&1 &
 fi
done
 #sleep $5+10
#done
