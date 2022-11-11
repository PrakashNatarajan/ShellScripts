#!/bin/bash

input_arg=$1
echo "Checking args"
echo $input_arg

testing="Testing"

if [ "$input_arg" == "Testing" ]
then
    echo "a is equal to b"
elif [[ "Testing123" == "$input_arg" ]]
then
    echo "b is equal to a"
else
   echo "a is not equal to b"
fi
