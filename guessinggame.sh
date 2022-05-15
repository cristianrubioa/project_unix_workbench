#!/bin/bash
# File: guessinggame.sh


function Input()
{
  local input=0
  while [[ $input -eq 0 ]]
  do
    echo ""
    read -p "Guess number: " guess
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
      echo -e "Please enter a NUMBER. \n"
    else
      let input=1
    fi
  done
}


function Guess()
{
  local found=0
  while [[ $found -eq 0 ]]
  do
    Input
    if [[ $guess -lt $answer ]]
    then
        echo " Your guess is less than the correct answer :("
    elif [[ $guess -gt $answer ]]
    then
        echo " Your guess is greater than the correct answer :("
    else
        echo " Congratulations you guessed!!"
        echo " Thanks for playing :)"
        let found=1
    fi  
  done
}



echo "-------------------------------------------------"
echo "         ->      Guess in game      <-           "
echo "-------------------------------------------------"
echo " * Guess number of files in current directory "
echo " Help: Type a number and then press [Enter]"


let answer=`find . -type f | grep -v git | wc -l`
Guess