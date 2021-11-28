#!/bin/bash

x=1
while [ $x -le 1000 ]
do
    docker run -t -d -p 100$x:10000 -v /extenstions:/extentions --restart unless-stopped xpra-chrome
    x=$(( $x + 1 ))
done