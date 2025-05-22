#!/bin/bash

echo "All variables passed: $@"
echo "number of variables: $#"
echo "script name: $0"
echo "current directory: $PWD"
echo "user running script: $USER"
echo "home directory user: $HOME"
echo "PID of script: $$"
sleep 10 &
echo "PID in last command: $!"