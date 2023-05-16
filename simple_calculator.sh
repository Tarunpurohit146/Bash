while true
do	echo -e "\tMain\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Exit"
	read -p "Enter Choice:" choice
	if [ $choice == 5 ]
	then
		exit
	elif [ $choice -lt 5 -a $choice -gt 0 ]
	then
		read -p "Enter number1:" num1
		read -p "Enter number2:" num2
	        case $choice in
  			1)	echo "Result :$((num1 + num2))"
   			;;	
   			2)	echo "Result :$((num1-num2))"
   			;;
   			3)	echo "Result :$((num1*num2))"
   			;;
   			4)	echo "Result :$((num1/num2))"
   			;;
		esac
	else
		echo "Enter valid choice!"
	fi
done

