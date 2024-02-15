#!/bin/bash

read -p "enter the number: " num

while [[ $num -le 10 ]]; do
    echo $num
    num=$((num + 1))
done

