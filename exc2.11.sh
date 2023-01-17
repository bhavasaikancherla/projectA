#!/bin/bash
random=$((RANDOM % 10))

echo "Guess the number between 0 and 9"
read guess

count=0

while [ $count -lt 3 ]
do
 if [ $guess -eq $random ]
 then
  echo "You guessed it right,Congratulations!"
  break
 else
  echo "Wrong guess, try again"
  read guess
  count=$((count+1))
 fi
done

if [ $count -eq 3 ]
then
 echo "The number was $random. Better luck next time!"
fi
