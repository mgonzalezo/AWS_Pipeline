#!/bin/bash
npm_process=`pgrep npm`
node_process=`pgrep node`
for i in $npm_process $node_process
do
    sudo kill -9 $i
    echo  "Process $i killed"
done
#Kill last process executed in the background
sudo kill $!

#Delete old npm files to avoid future errors on ubuntu Linux
sudo rm -rf /home/ubuntu/nodejs
