#!/bin/bash -x
declare -i result
declare -i arr
read -p "enter a b c : " a b c
s1=$(($a+($b*$c)));
echo " s1 - " $s1
s2=$((`expr $a*$b+$c`));
echo " s2 - " $s2
s3=$((`expr $c+$a/$b`));
echo " s3 - " $s3
s4=$((`expr $a%$b+$c`));
echo " s4 - " $s4
temp=0
result[((temp++))]="$s1"
result[((temp++))]="$s2"
result[((temp++))]="$s3"
result[((temp))]="$s4"
echo "dictionary -" ${result[@]}
echo "dictionary -" ${!result[@]}

echo "Result in array "${result[@]}

temp=0
arr[((temp++))]="$s1"
arr[((temp++))]="$s2"
arr[((temp++))]="$s3"
arr[((temp))]="$s4"


echo "dictionary -" ${!arr[@]}

@@ -54,7 +60,30 @@ do
    done
done

echo "Array in sorted order :"
echo "Array in descending order :"
echo ${arr[*]}


echo "dictionary -" ${!result[@]}

echo "Result in array "${result[@]}


for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${result[j]} -gt ${result[$((j+1))]} ]
        then
            temp=${result[j]}
            result[$j]=${result[$((j+1))]}
            result[$((j+1))]=$temp
        fi
    done
done

echo "Array in Ascending order :"
echo ${result[*]}
