#!/bin/bash 

HEAD=0
TAIL=1
FLIPCOIN=$((RANDOM%2))
if [ $HEAD == $FLIPCOIN ]
then
    echo "HEAD"
else
    echo "TAIL"
fi
