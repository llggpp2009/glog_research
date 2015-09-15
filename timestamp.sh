#!/bin/bash
for FILE in $(git ls-files)
do
#FILE=aclocal.m4
    TIME=$(git log --pretty=format:%cd -n 1 --date=iso $FILE)    
   TIME=$(date -d "$TIME" +%Y%m%d%H%M)   
   touch -ht $TIME $FILE
done

