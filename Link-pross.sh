#!/bin/bash

s=$1

./MITM.sh ''$(curl -vs https://archive.org/download/passwords_202103/passwords.txt 2>&1 | grep "< location: " | awk '{print $3}' | sed "s/\./ /g; s/\// /g; s/://g; s/https//g; s/archive//g; s/org//g; s/items//g; s/passwords//g; s/_202103//g; s/txt//g; s/   / /g" | awk '{print $1, $2, $3}')''
