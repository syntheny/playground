#!/bin/bash
echo "hello world: $*"
echo "XYZ: $XYZ"
echo "CHUBBA: $chubba"
[ "$chubba" = "****" ] && echo "Chubba is all stars"
[ "$chubba" = "secret" ] && echo "Chubba is secret"

echo "goodbye cruel world"

N=${1:-10}

a=0
b=1

echo "The Fibonacci series is : "

for (( i=0; i<N; i++ ))
do
    echo -e "$i\t$a"
    fn=$((a + b))
    a=$b
    b=$fn
done
