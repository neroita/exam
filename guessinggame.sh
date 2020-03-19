#!/usr/bin/env bash
# File: guessinggame.sh

found=false
dirfiles=`find . -maxdepth 1 -type f,b,c,p,l,s | wc -l`

function check_number {
	if [[ $answer -gt $dirfiles ]] 
	then
		echo "No , $answer is too high."
		echo "Try again."
	fi
	if [[ $answer -lt $dirfiles ]] 
	then
		echo "No , $answer is too low."
		echo "Try again."
	fi
	if [[ $answer -eq $dirfiles ]] 
	then
		found=true
		echo "Yes $answer is the right number of files."
	fi
}

while [[ $found = false ]]
do
	echo
	echo "How much files in that dir ?"
	read answer
	if [ -n "$answer" ] && [ "$answer" -eq "$answer" ] 2>/dev/null
	then
		check_number
	else
		echo "$answer is not a number."
	fi
done


