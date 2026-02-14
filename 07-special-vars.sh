#!/bin/bash

echo "All variables passed: $@"
echo "Number of variables: $#"
echo "script name: $0"
echo "present working directory: $PWD"
echo "Home directory od current user: $HOME"
echo "which user is running this script: $USER"
echo "Process id of current script: $$"
sleep 60 &  #it will run at foar ground to movie to background just give & 
echo "process id of last command in background: $!"