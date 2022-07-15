#!bin/bash -x
echo "Enter the value of a:"
read a

echo "Enter the value of b:"
read b

echo "Enter the value of c:"
read c

Total=$[ $a * $b + $c]

echo "Compute(a*b+c): $Total"