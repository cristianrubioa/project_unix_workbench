#!/bin/bash
# File: guessinggame.sh


echo "-------------------------------------------------"
echo "         ->      Guess in game      <-           "
echo "-------------------------------------------------"
echo " * Guess number of files in current directory "
echo " Help: Type a number and then press [Enter]"


let correctAnswer=`find . -type f | grep -v git | wc -l`
let found=0

function getInput()
{
  local validInput=0
  while [[ validInput -eq 0 ]]
  do
    read -p 'Guess number: ' guess
    if [[ $guess =~(^[+,-]{0,1}[0-9]+) ]]
    then
      let validInput=1
    else
      echo 'Please enter a NUMBER.'
      echo ""
   fi
  done
}

while [[ $found -ne 1 ]]
do
    echo ""
    getInput 
    if [[ guess -lt $correctAnswer ]]
    then
        echo " Your guess is less than the correct answer :("
    elif [[ guess -gt $correctAnswer ]]
    then
        echo " Your guess is greater than the correct answer :("
    else
        echo " Congratulations! you guessed!!"
        echo " Thanks for playing :)"
        let found=1
    fi   
done