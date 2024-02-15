#!/bin/bash

# This is a for loop example to delete directories

for ((num=1; num<=5; num++)); do
    rm -rf "demo$num"
done


