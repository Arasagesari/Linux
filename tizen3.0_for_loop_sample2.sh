#!/bin/bash

m=9

for i in {1..9}
do
     n=$((m--));
     echo -e "\n\t" "\033[4$i;37;5m iteration $i" "\033[0m" "\033[4$n;37;5m iteration $i" "\033[0m"

      startx &> startx_$i &

sleep 5
kill -2 `pgrep startx`
sleep 2
done
