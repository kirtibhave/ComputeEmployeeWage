!/bin/bash 
echo "welcome to arithmetic computation & sorting"

declare -A Dictionary_Result
declare -a Array_Result
read -p  "enter first number" a
read -p  "enter second  number" b
read -p  "enter third  number" c

operation1=`echo "scale=2; $a+$b*$c" | bc`
operation2=`echo "scale=2; $a*$b+$c" | bc`
operation3=`echo "scale=2; $c+$a/$b" | bc`
operation4=`echo "($a%$b)+$c" | bc`

echo "result of first operation :" $operation1
echo "result of second operation :" $operation2
echo "result of third operation  :" $operation3
echo "result of fourth operation  :" $operation4

Dictionary_Result[1]="$operation1"
Dictionary_Result[2]="$operation2"
Dictionary_Result[3]="$operation3"
Dictionary_Result[4]="$operation4"

for(( i=0;i<=4;i++ ))
do
      Array_Result[i]=${Dictionary_Result[$i]}
done
      echo "array is:" ${Array_Result[@]}
len=${#Array_Result[@]}

for((i=0;i<$len-1;i++))
do
     for((j=i+1;j<$len;j++))
     do
        if [[ ${Array_Result[i]%.*} -lt ${Array_Result[j]%.*} ]]
        then
             temp=${Array_Result[i]}
             Array_Result[i]=${Array_Result[j]}
             Array_Result[j]=$temp
        fi
     done
done
  echo "descending order:" ${Array_Result[@]}
