#!/usr/bin/env bash
# File: guessinggame.sh

found=false
dirfiles=`find . -type f | wc -l`

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
	check_number
done


