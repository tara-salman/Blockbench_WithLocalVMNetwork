QUO_HOME=/home/vagrant/blockbench/benchmark/quorum_pbft
HOSTS=$QUO_HOME/hosts
CLIENTS=$QUO_HOME/clients
QUO_DATA=/home/vagrant/quorum_pbft
LOG_DIR=$QUO_HOME/pbftresults_1
EXE_HOME=$QUO_HOME/../../src/macro/kvstore
BENCHMARK=ycsb
QUORUM=/home/vagrant/blockbench/benchmark/quorum_clique/quorum/build/bin/geth
ADDRESSES=$QUO_HOME/addresses

##comment these out for smallbank
EXE_HOME=$QUO_HOME/../../src/macro/smallbank
BENCHMARK=smallbank 
#LOG_DIR=$QUO_HOME/smallbank_results_2
# var address = "0x1932c48b2bf8102ba33b4a6b545c32236e342f34"
# var abi = [{"constant":true,"inputs":[],"name":"storedData","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"x","type":"uint256"}],"name":"set","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"get","outputs":[{"name":"retVal","type":"uint256"}],"payable":false,"type":"function"},{"inputs":[{"name":"initVal","type":"uint256"}],"type":"constructor"}];
# var private = eth.contract(abi).at(address)
# private.get()
