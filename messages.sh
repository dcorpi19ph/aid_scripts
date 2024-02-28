#!/bin/bash

path="/var/log/"
w="warning"

cd "$path"
for file in messages*
do

#   echo"$file"
#   cat "$file" | grep -i "$palabra"
   grep -Ril "$w" "$file"

done
