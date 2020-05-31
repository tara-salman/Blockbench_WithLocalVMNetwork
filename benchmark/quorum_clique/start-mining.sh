
#!/bin/bash
cd `dirname ${BASH_SOURCE-$0}`
. env.sh
echo "start-mining.sh"

#nohup geth --allow-insecure-unlock --nousb --datadir=$QUO_DATA --nodiscover --bootnodes "enode://ac6b1096ca56b9f6d004b779ae3728bf83f8e22453404cc3cef16a3d9b96608bc67c4b30db88e0a5a6c6390213f7acbe1153ff6d23ce57380104288ae19373ef@10.0.0.3:30303" --syncmode full --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,clique --unlock 0 --password <(echo -n "") --mine > $QUO_DATA/../clique_log 2>&1 &
#--mine --rpcaddr 127.0.0.1 --rpcapi eth,net,web3,persona
if [[ $1 -eq 0 ]]; then
    echo $1
    nohup ${QUORUM} --datadir $QUO_DATA --rpccorsdomain "*" --nodiscover --syncmode full --mine --rpc --rpcaddr 0.0.0.0 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum --rpcport 8000 --unlock 0 --password <(echo -n "") > $QUO_DATA/../clique_quorum_log 2>&1 &
else
    nohup ${QUORUM} --datadir $QUO_DATA  --rpccorsdomain "*" --nodiscover --syncmode full --mine  --bootnodes "enode://ac6b1096ca56b9f6d004b779ae3728bf83f8e22453404cc3cef16a3d9b96608bc67c4b30db88e0a5a6c6390213f7acbe1153ff6d23ce57380104288ae19373ef@10.0.0.3:30303" --rpc --rpcaddr 0.0.0.0 --rpcport 8000 --unlock 0 --password <(echo -n "") > $QUO_DATA/../clique_quorum_log 2>&1 &
fi
