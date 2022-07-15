#!/bin/bash -x
# Program for computation result and make it Ascending and Descending.
read -p "Enter 1st number : " a
read -p "Enter 2nd number : " b
read -p "Enter 3rd number : " c

	m=$(( a + b * c ))
	echo $m

	n=$(( a * b + c ))
	echo $n

	o=$(( c + a / b ))
	echo $o

	p=$(( a % b + c ))
	echo $p

declare -A computation
computation[x+y*z]="$m"
computation[x*y+z]="$n"
computation[z+x/y]="$o"
computation[x%y+z]="$p"

	echo "The result of all computation is:" ${computation[@]}

mysort(){
    printf '%s\n' "$@" | sort -n
}

echo "Numbers in Ascending order:"
mysort "${computation[@]}"

Descending(){
printf '%s\n' "${array[@]}" | tac | tr '\n' ' ';
}
Descending "${computation[@]}"