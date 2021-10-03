#!/bin/bash

#Create a script that asks for a command name - then displays it's absolute path and the runs it and displays the output?

read -p "enter a command name" name

which $name

$name


