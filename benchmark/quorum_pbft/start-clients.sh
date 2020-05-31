#!/bin/bash
# args=THREADS index N txrate
echo IN START_CLIENTS $1 $2 $3 $4

cd `dirname ${BASH_SOURCE-$0}`
. env.sh

#..
export CPATH=/local/include
export LIBRARY_PATH=/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/local/lib:$LD_LIBRARY_PATH
#..

LOG_DIR=$LOG_DIR/exp_$3"_"servers_$1"_"threads_$4"_"rates
mkdir -p $LOG_DIR
i=0
for host in `cat $HOSTS`; do
  let n=i/2
  let i=i+1
  if [[ $n -eq $2 ]]; then
    cd $EXE_HOME
    #both ycsbc and smallbank use the same driver
    nohup ./driver -db ethereum -ops 1000 -threads $1 -txrate  $4 -st $5 -fp stat.txt -endpoint $host:8000 > $LOG_DIR/client_$host"_"$1"_"$6 2>&1 &
  fi
done

