#!/bin/bash

while :
do
    ping -c1 -W1 8.8.8.8 &> /dev/null
        if [ "$?" == "0" ]; then
            echo "UP";
        else
            echo "Down";
        fi
    sleep 10
done