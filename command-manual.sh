#!/bin/bash

echo "Which of these would you like to find out the command for?"

echo "1 - create directories"
echo "2 - show exact path to the current directory"
echo "3 - create file"
echo "4 - delete files and directories"
echo "5 - navigate and change the working directory you're in"

read command;

case $command in
        1) echo "mkdir";;
        2) echo "pwd";;
        3) echo "touch";;
        4) echo "rm";;
        5) echo "cd";;
        *) echo "invalid option"
esac
