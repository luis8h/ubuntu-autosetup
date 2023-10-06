#!/bin/bash

echo "this is stage 0"

echo 1 > .progress

number=$(<.progress)
echo "number: $number"
