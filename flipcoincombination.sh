#!/bin/bash
 flip=$((RANDOM%2))
 if [ $flip -eq 1 ]
   then
      echo "HEADS"
   else
      echo "TAILS"
   fi
declare -A percentage
declare -A flipcoin
count=1
HEADS=0
TAILS=0
max=10
while [[ $count -le $max ]]
do
   flip=$((RANDOM%2))
   
   if [ $flip -eq 1 ]
   then
      ((HEADS++))
   else
      ((TAILS++))
   fi
   flipcoin["$count"]=$flip
   ((count++))
done
echo "FLIPCOUNT-"$count
echo "HEADS Percentage -"$(($HEADS*10))
echo "TAILS Percentage -"$(($TAILS*10))
echo "flipcoin output "${flipcoin[@]}
percentage[H]=$(($HEADS*10))
percentage[T]=$(($TAILS*10))
echo "percentage output "${percentage[@]}
declare -A flipcoin
count=1
HH=0
HT=0
TH=0
TT=0
max=10
while [[ $count -le $max ]]
do
   flip1=$((RANDOM%2))
   flip2=$((RANDOM%2))
   if [[ $flip1 -eq 1 && $flip2 -eq 1 ]]
   then
      ((HH++))
   elif [[ $flip1 -eq 0 && $flip2 -eq 0 ]]
   then
      ((TT++))
   elif [[ $flip1 -eq 0 && $flip2 -eq 1 ]]
   then
      ((TH++))
   else
      ((HT++))
fi
   flipcoin["$count"]=$flip1$flip2
   ((count++))
done
echo "FLIPCOUNT-"$count
echo "HH Percentage -"$(($HH*10))
echo "TT Percentage -"$(($TT*10))
echo "HT Percentage -"$(($HT*10))
echo "TH Percentage -"$(($TH*10))
echo "flipcoin output "${flipcoin[@]}
percentage[HH]=$(($HH*10))
percentage[TT]=$(($TT*10))
percentage[HT]=$(($HT*10))
percentage[TH]=$(($TH*10))
echo "percentage output "${percentage[@]}
declare -A flipcoin
count=1
HHH=0
HHT=0
HTH=0
TTT=0
HTT=0
THH=0
THT=0
TTH=0
max=10
while [[ $count -le $max ]]
do
   flip1=$((RANDOM%2))
   flip2=$((RANDOM%2))
   flip3=$((RANDOM%2))
   if [[ $flip1 -eq 1 && $flip2 -eq 1 && $flip3 -eq 1 ]]
   then
      ((HHH++))
   elif [[ $flip1 -eq 1 && $flip2 -eq 1 && $flip3 -eq 0 ]]
   then
      ((HHT++))
   elif [[ $flip1 -eq 1 && $flip2 -eq 0 && $flip3 -eq 1 ]]
   then
      ((HTH++))
   elif [[ $flip1 -eq 1 && $flip2 -eq 0 && $flip3 -eq 0 ]]
   then
      ((HTT++))
    elif [[ $flip1 -eq 0 && $flip2 -eq 1 && $flip3 -eq 1 ]]
   then
      ((THH++))
    elif [[ $flip1 -eq 0 && $flip2 -eq 1 && $flip3 -eq 0 ]]
   then
      ((THT++))
    elif [[ $flip1 -eq 0 && $flip2 -eq 0 && $flip3 -eq 1 ]]
   then
      ((TTH++))
   else
      ((TTT++))
fi
   flipcoin["$count"]=$flip1$flip2$flip3
   ((count++))
done
echo "FLIPCOUNT-"$count
echo "HHH Percentage -"$(($HHH*10))
echo "HHT Percentage -"$(($HHT*10))
echo "HTH Percentage -"$(($HTH*10))
echo "HTT Percentage -"$(($HTT*10))
echo "THH Percentage -"$(($THH*10))
echo "THT Percentage -"$(($THT*10))
echo "TTH Percentage -"$(($TTH*10))
echo "TTT Percentage -"$(($TTT*10))
echo "flipcoin output "${flipcoin[@]}
percentage[HHH]=$(($HHH*10))
percentage[HHT]=$(($HHT*10))
percentage[HTH]=$(($HTH*10))
percentage[HTT]=$(($HTT*10))
percentage[THH]=$(($THH*10))
percentage[THT]=$(($THT*10))
percentage[TTH]=$(($TTH*10))
percentage[TTT]=$(($TTT*10))

echo "percentage output "${percentage[@]}

sorting=( $(printf "%s\n" "${percentage[@]}" | sort -n ))

for i in ${!percentage[@]};
do
if [[ ${percentage[$i]} -eq ${sorting[13]} ]]
then
    echo "winner is "${i}
fi
done
