#!/bin/bash

sum=$(($1 % 2))

if [ $sum = 0 ]; then
   echo "$EVENT is EVEN number"
else
   echo "$EVENT is ODD number"
fi

