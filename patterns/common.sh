#!/bin/bash

function entry {
    local a=$b
}

function getStringSize {
   local name=$1

   echo "$1" | tr -d '\n\r' | wc -m
}