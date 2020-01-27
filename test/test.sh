#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

word=Extensivew

total=$($DIR/../wifipat.sh $word | sort | uniq -d |wc -l)

echo "Total of $total duplicates for word: $word"

if [[ $total -eq 0 ]]; then
    echo "All combinations are unique :)"
    exit 0
else
    exit 1
fi