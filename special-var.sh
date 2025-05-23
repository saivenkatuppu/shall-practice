#!/bin/bash

echo "all var passed to the script: $@"
echo "Number of variables: $#"
echo "script name : $0"
echo "current directory :$PWD"
echo "user running this script : $Home"
echo "PID of the script: $$"
sleep 10 &
echo "PID of the last command in bg: $!"
