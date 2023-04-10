#!/bin/bash
read -p "Enter random number range:" range
echo -e "Starting......\nYou will have 3 tries to win"
sleep 2
random=$(($RANDOM % $range + 1))
for i in {1..3}
do
   read -p "Enter any number between (1-$range):"  num
   if [ $random == $num ] 
   then 
      echo 'You Win'
      exit 
   else
      if [ $((3-$i)) == 0 ]
      then 
         echo "You lose!"
      else
         echo -e "Better luck next time\nmore $((3-$i)) trie"
      fi  
   fi
done
