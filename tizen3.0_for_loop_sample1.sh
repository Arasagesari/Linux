#!/bin/bash

declare -i numbers=(1 2 3 4 5 6 7 8 9 10) #array assign integer
for i in ${numbers[@]}
do
     echo -e "\n\t" "\033[44;37;5m iteration $i" "\033[0m"
     startx &> startx_$i &

sleep 5
kill -2 `pgrep startx`
sleep 2
done

cat <<- _EOF_
for i in {1..20}
do
     echo -e "\n\t" "\033[44;37;5m iteration $i" "\033[0m" 
     /usr/bin/meston --idle-time=0 --tty=1 &> meston_$i &
sleep 5
kill -2 `pgrep meston`
sleep 2
done

_EOF_
