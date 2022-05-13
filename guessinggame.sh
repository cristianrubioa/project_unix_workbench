#!/bin/bash
# File: guessinggame.sh


echo "-------------------------------------------------"
echo "         ->      Guess in game      <-           "
echo "-------------------------------------------------"
echo " * Guess number of files in current directory "
echo " Help: Type a number and then press [Enter]"

current_number_files=`find . -type f | wc -l`

while [[ $guess_number -ne $current_number_files ]]
do
    echo ""
    read -p "Guess a number: "  guess_number
    if [[ $guess_number -eq $current_number_files ]]
    then
        echo " Congratulations you guessed!!"
        echo " Thanks for playing :)"
    elif [[ $guess_number -gt $current_number_files ]]
    then
        echo " Is a smaller number :("
    else
        echo " Is a larger number :("
    fi   
done