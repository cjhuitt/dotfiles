#!/bin/bash

for file in $( ls )
do
   if [ -d "$file" ]
   then
      result1=$( du -sh "$file" )
      result="${result}"$'\n'"${result1}"
   fi
done

echo "${result}"
