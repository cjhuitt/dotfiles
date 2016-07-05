#!/bin/bash

executable=$1
shift

if [ ! -e $executable ]; then
    echo "Usage: $0 <executable> <address 1> [address 2...]"
fi
if [ $# == 0 ]; then
    echo "Usage: $0 <executable> <address 1> [address 2...]"
fi

for addr in $*
do
    addr2line -e $executable $addr
done
