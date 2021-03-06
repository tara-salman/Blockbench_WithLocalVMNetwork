NS=[2]
NODES=['10.0.0.{}'.format(x) for x in range(3,4)]

CLIENTS=['10.0.0.{}'.format(x) for x in range(4,5)]
PORT='8000'
#THREADS=[2,4,8,16,32]
#RATES=[1,2,4,8,12,16]
THREADS=[32]
RATES=[8]

HOME_DIR='/home/vagrant/blockbench/benchmark/parity'
CHAIN_DATA='/home/vagrant/blockbench/benchmark/parity/chain-data'
LOG_DIR='/home/vagrant/blockbench/benchmark/parity/logs/'
PARITY_EXE='/home/vagrant/parity-ethereum/.cargo/bin/parity'
CLIENT_LOG='logs_ycsb'

CLIENT_DRIVER='start_ycsb_client.sh'

enode_command = 'curl --data \'{{"jsonrpc": "2.0", "method": "parity_enode", "params":[], "id": 0}}\' -H "Content-Type: application/json" -X POST {}:{}'
add_peer = 'curl --data \'{{"jsonrpc": "2.0", "method": "parity_addReservedPeer", "params":["{}"], "id": 0}}\' -H "Content-Type: application/json" -X POST {}:{}'
kill_command = 'ssh -o StrictHostKeyChecking=no vagrant@{} "killall -KILL {}"'
ssh_command = 'ssh -o StrictHostKeyChecking=no vagrant@{} {}'

partition_cmd = './partition.sh {} {} {} &'
TIMEOUT=150
