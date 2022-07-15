#!bin/bash -x

declare -A Results
Results[a+b*c]="610"
Results[a*b+c]="230"
Results[c+a/b]="30"
Results[a%b+c]="40"
echo "All Results are:" ${#Results[@]}

echo "All Keys are:" ${!Results[@]}

echo "All Results are:" ${Results[@]}
