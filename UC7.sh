#!bin/bash -x

declare -A result
result[a+b*c]="610"
result[a*b+c]="230"
result[c+a/b]="30"
result[a%b+c]="40"

Values=("${result[a+b*c]}" "${result[a*b+c]}" "${result[c+a/b]}" "${result[a%b+c]}")
echo ${Values[@]}

for ((i=0;i<5;i++))
do
for ((j=i;j<-i-1;j++))
do
if ((${Values[j]}>${Values[$((j+1))]}))
then
temp=${Values[$j]}
Values[$j]=${Values[$((j+1))]}
Values[$((j+1))]=$temp
fi
done
done

echo ${Values[@]}
sort<<<"${Values[@]}"
echo ${Values[@]}
