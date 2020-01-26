#!/bin/bash

if [[ $1 ]]; then
    test=$1
else
    >&2 echo Missing word argument
    exit 1
fi


test=$(echo $test | tr '[:upper:]' '[:lower:]')

for f in patterns/*; do

    # >&2 echo $f
    source $f
    entry $test


done