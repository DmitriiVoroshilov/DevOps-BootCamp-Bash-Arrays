#!/bin/bash

fnum=1
maxcount=26

for i in {a..z}; do
        if [ $fnum -le $1 ] && [ $1 -le $maxcount ] 
                then
                mkdir folder_$i
                ((fnum++))
        fi
done

lastfnum=$(($fnum - 1))

if [[ $fnum -gt 1 ]]
        then
                echo "$lastfnum folders created: $(ls -d folder_* | grep -v / | xargs echo | sed 's/ /, /g')";
        else
                echo "Error!!! Invalid argument! (You must use a number between 1 and 26!)"
fi