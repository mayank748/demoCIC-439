#! /bin/bash -x

read -p "Enter the number of day " dayNumber

if [ $dayNumber -eq 1 ]
then 
	echo "Monday"
elif [ $dayNumber -eq 2 ]
then
	echo "Tuesday"
elif [ $dayNumber -eq 3 ]
then 
	echo "Wednesday"
elif [ $dayNumber -eq 4 ]
then 
	echo "Thusday"
elif [ $dayNumber -eq 5 ]
then 
	echo "Friday"
elif [ $dayNumber -eq 6 ]
then 
	echo "Saturday"
elif [ $dayNumber -eq 7 ]
then 
	echo "Sunday"
else
	echo "Enter the number between 1 to 7"
fi

case $dayNumber in 
	1)
		echo "Monday";;
	2)
		echo "Tuesday";;
	3)
		echo "Wednesday";;
	4)
		echo "Thusday";;
	5)
		echo "Friday";;
	6)
		echo "Saturday";;
	7)
		echo "Sunday";;
	*)
		echo "Enter the number between 1 to 7";;
esac
