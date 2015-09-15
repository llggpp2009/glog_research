#!/bin/bash

for FILE in $(git ls-files)
do
#FILE=aclocal.m4
    TIME=$(git log --pretty=format:%cd -n 1 --date=iso $FILE)
    #TIME=$(date -s '%Y-%m-%d %H:%M:%S %z' "$TIME" +%Y%m%d%H%M.%S)
    echo $TIME
#    TIME=$("$TIME" +%Y%m%d%H%M.%S)
    touch -hd $TIME $FILE
done

