#!/bin/bash

echo "All variables passed to the scropt: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "process instance of ID running script: $$"
sleep 100 &
echo "PID of last background command: $!"