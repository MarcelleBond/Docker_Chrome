#!/bin/bash

x=1
while [ $x -le $1 ]
do
    sudo docker run -t -d -p 100$x:10000 --restart unless-stopped docker_chrome
    x=$(( $x + 1 ))
done