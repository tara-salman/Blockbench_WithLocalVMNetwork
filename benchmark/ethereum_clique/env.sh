QUO_HOME=/home/vagrant/blockbench/benchmark/ethereum_clique
HOSTS=$QUO_HOME/hosts
CLIENTS=$QUO_HOME/clients
QUO_DATA=/home/vagrant/ethereum_clique
LOG_DIR=$QUO_HOME/../data/vote
EXE_HOME=$QUO_HOME/../../src/macro/kvstore
BENCHMARK=ycsb
#QUORUM=/home/vagrant/blockbench/benchmark/quorum_clique/quorum/build/bin/geth
ADDRESSES=$QUO_HOME/addresses

##comment these out for smallbank
EXE_HOME=$QUO_HOME/../../src/macro/smallbank
BENCHMARK=smallbank 
#LOG_DIR=$QUO_HOME/smallbank_results_2
