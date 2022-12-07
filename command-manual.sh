#!/bin/bash

# Commands stored in command variable
commands="mkdir,pwd,touch,rm,cd,invalid"

# Asking for user input
echo "Which of these would you like to find out the command for?"

echo "1 - create directories"
echo "2 - show exact path to the current directory"
echo "3 - create file"
echo "4 - delete file"
echo "5 - navigate and change the working directory you're in"

read command;

# Case statement outputting commands via a substring
case $command in
        1) echo ${commands:0:5};;
        2) echo ${commands:6:3};;
        3) echo ${commands:10:5};;
        4) echo ${commands:16:2};;
        5) echo ${commands:19:2};;
        *) echo "invalid option"
esac
