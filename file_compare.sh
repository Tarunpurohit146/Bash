#!/bin/bash
read -p "Enter file1:" file1
read -p "Enter file2:" file2
file_content1=$(cat $file1 | tr "\n" ",") # this will replace '\n' with ',' and store it in file_content1
IFS="," # internal field separator which replace ',' with space(' ')
read -a arr1 <<< ${file_content1[@]} # uses IFS to replace ',' with ' ' and store it in arr1 which is an array
file_content2=$(cat $file2 | tr "\n" ",")
IFS=","
read -a arr2 <<< ${file_content2[@]}
if [[ ${#arr1[@]} == ${#arr2[@]} ]];
then
    for ((i=0;i<${#arr1[@]};i++))
    do
    	if [ "${arr1[$i]}" != "${arr2[$i]}" ];
    	then
    		echo -e '\e[0;31m'"Do not match:
    		\e[1;33m$file1:\e[0;31m${arr1[$i]//[[:space:]]/}
    		\e[1;33m$file2:\e[0;31m${arr2[$i]//[[:space:]]/}" # //[[:space:]]/ this is an regular expression which will eliminate any space around string
    		echo -e '\e[1;32m'"--------------------------------------------------------"
    	fi
    done 
else
	echo -e '\e[1;33m'"Files do not match"
fi
