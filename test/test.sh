#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

word=Extensivew

total=$($DIR/../wifipat.sh $word | wc -l)

echo "Total of $total combinations for word: $word"

sub_total=$($DIR/../wifipat.sh $word | sort -u | wc -l)

if [[ $total -eq $sub_total ]]; then
    echo "All combinations are unique :)"
    exit 0
else
    dups=$(($total - $sub_total))
    echo "ERROR: Patterns with dupplicates (duplicated: $dups entries)"
    exit 1
fi