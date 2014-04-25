#!/bin/bash

array=( "one" "two" "three" "four" )

echo ${array[0]}
echo ${array:0}

#Display all element
echo ${array[@]}
echo ${array[@]:0}

#Display element in a range
echo ${array[@]:2:3}

#Length of first element
echo ${#array[0]}
echo ${#array}

#Lenght of third element
echo ${#array[2]}
echo ${#array}

#Display number of elements
echo ${#array[*]}
echo ${#array[@]}

#Replacing substing
#echo ${array[@]//e/E}
#echo ${array[1]//t/TE}

#Read/assign array value from terminal
#read -a number
#echo ${number[@]}

#for ix in ${!array[*]}
#do

#echo "Test no $ix : ${array[$ix]}"

#done

#set -x

echo "the meaning of $#"
#if [ -n $1 ]; then
if [ $# -eq 0 ]; then
   echo "Cannot be empty parameter"

elif [[ ${array[$1]} == ${array[@]} ]]; then
   echo ${array[$1]}

else
   echo "This not ${array[$1]} array not exist"	
fi

exit 0
