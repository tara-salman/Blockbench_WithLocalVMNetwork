#!/bin/bash
THREADS=$1
HOST=$2
LOG=$3
RATE=$4
cd `dirname ${BASH_SOURCE-$0}`
EXE='../../src/macro/smallbank/driver'
#nohup ./driver -db ethereum -ops 10000 -threads $1 -txrate  $4 -st $5 -fp stat.txt -endpoint $host:8000 > $LOG_DIR/client_$host"_"$1"_"$6 2>&1 &
nohup $EXE -db parity -ops 10000 -fp stat.txt -st $5 -threads $THREADS -endpoint $HOST -txrate $RATE > $LOG  2>&1 &
