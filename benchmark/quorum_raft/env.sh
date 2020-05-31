QUO_HOME=/home/vagrant/blockbench/benchmark/quorum_raft
HOSTS=$QUO_HOME/hosts
CLIENTS=$QUO_HOME/clients
QUO_DATA=/home/vagrant/quorum_raft
LOG_DIR=$QUO_HOME/raftresults_1
EXE_HOME=$QUO_HOME/../../src/macro/kvstore
BENCHMARK=ycsb
QUORUM=/usr/local/bin/geth
ADDRESSES=$QUO_HOME/addresses

##comment these out for smallbank
EXE_HOME=$QUO_HOME/../../src/macro/smallbank
BENCHMARK=smallbank 
#LOG_DIR=$QUO_HOME/smallbank_results_2
