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


#UC3

count=0
HEADS=0
TAILS=0

while [[ $HEADS -lt 21 && $TAILS -lt 21 ]]
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
echo "HEADS $HEADS times"
echo "TAILS $TAILS times"

if [ $HEADS -gt $TAILS ]
then
    echo " HEADS WIN"
else
    echo "TAILS WIN"
fi
