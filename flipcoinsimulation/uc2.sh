#!/bin/bash
#uc1
 flip=$((RANDOM%2))
 if [ $flip -eq 1 ]
   then
      echo "HEADS"
   else
      echo "TAILS"
   fi


#uc2

count=1
HEADS=0
TAILS=0
max=10
while [[ $count -le $max ]]
do
   flip=$((RANDOM%2))

   if [ $flip -eq 1 ]
   then
      (( HEADS++ ))
   else
      (( TAILS++ ))
   fi
   ((count++))
done
echo "FLIPCOUNT-"$count
echo "HEADS-"$HEADS
echo "TAILS-"$TAILS
