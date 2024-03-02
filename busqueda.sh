#!/bin/bash

path="/var/log/"
w="Warning"

cd "$path"
for file in *
do
	grep -Ril "$w" "$file"
done
