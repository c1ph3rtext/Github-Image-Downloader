#!/bin/bash

curl -s -L $1 -o file

for i in $(cat file | grep -oE "href=(.*)" | cut -d"=" -f2 | cut -d">" -f1 | tr -d "'\"" | sort -ru)
do
echo -e "\033[91mlinks: \033[92m$i"
echo -e "\033[0m"
done

rm file
