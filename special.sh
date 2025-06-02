#!/bin/bash


echo "The number is $1"
echo "The number is $2"
echo "The number is $3"


#This prints all the arguments which are passed as separate words
echo "Using \$@"

for arg in "$@";
do
    echo "$arg"
done

#This prints all the arguments which are passed as single word
echo "Using $*"

for arg in "$*";
do
    echo "$arg"

done
