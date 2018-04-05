#!/bin/bash

START=$HOME
 
# change your directory to command line if passed
# otherwise use home directory
[ $# -eq 1 ] && START=$1 
 echo "                                             Test_1 $START"
if [ ! -d $START ]
then
	echo "$START not a directory!"
	exit 1
fi
     echo  The number of files: 
     ls -l | wc -l
echo "git int"
    git init
echo "git int"
    git add $1
    git status
echo "git commit"
    git commit -m "$1"
echo "git add origin"
    git add origin $2
if [ ! -d $2 ]
then
	echo "$START not a directory!"
	exit 1
fi
echo "git push"
    git push origin master