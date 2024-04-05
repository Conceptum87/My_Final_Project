#!/usr/bin/bash
#File: guessinggame.sh

count=0
number_of_files=$(eval ls -l | grep "^\W" | wc -l)

function check_guess { 
  
        
        if [[ "$guess_number" -gt "$number_of_files" ]]
        then
		echo "Wrong guess! Too high. Try it again."
	elif [[ "$guess_number" -lt "$number_of_files" ]]
	then
	        echo "Wrong guess! Too low. Try it again." 
	fi
        	let count=$count+1
         	echo "Type a number: "            
}

echo "This game works like this: You have to guess the number of files in the current directory"
echo "Let's get started."
echo "Type a number: "

while read guess_number
do 
        if [[ "$guess_number" -ne "$number_of_files" ]]
        then
      		check_guess $guess_number  
      	else
      		break
      	fi
done 

let count=$count+1

echo "You got it right! There are $guess_number files in the current directory and you guessed it right after $count attempts!"
