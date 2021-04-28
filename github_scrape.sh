#!/bin/bash

curl -s -L https://github.com/$1 -o user

for i in $(cat user | grep -oE "href=(.*)" | cut -d"=" -f2 | cut -d">" -f1 | tr -d "'\"" | sort -ru | grep -oE "https://avatars.githubusercontent.com/u/(.*)")
do
curl  -sL $i -o $1.jpeg
rm user
done
