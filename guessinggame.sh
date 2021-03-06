#!/usr/bin/env bash
#The Guessing Game by jenzejoe2
echo "### The Guessing Game by jenzejoe2 ###"
echo "PLS guess how many files are in the current directory (this shell script included): "
read x

function fun_file_number {
	local file_number=$(ls -l | wc -l)-1		# -1 for the exluding the first line
	echo $file_number
}

filenr=$(fun_file_number)

while [[ $x -ne $filenr ]]
do
	if [[ $x -gt $filenr ]]
	then
		echo "A pitty, your guess was > the actual number of files in the current directory..."
	else 
		echo "A pitty, your guess was < the actual number of files in the current directory..."
	fi
	echo
	echo "PLS enter new guess: "
	read x
done

echo "Congratulations! You guessed the right number!"
