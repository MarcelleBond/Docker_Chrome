#!/bin/bash

x=1
port=5000
while [ $x -le $1 ]
do
    sudo docker run -t -d -p $port:10000 --restart unless-stopped hotbox.azurecr.io/marcellebond/docker_chrome:1.0.1
    x=$(( $x + 1 ))
    port=$(( $port + 1 ))
done