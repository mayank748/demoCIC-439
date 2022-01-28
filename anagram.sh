#! /bin/bash -x

read -p "Enter the first number " num_a
read -p "Enter the second number " num_b

rem_a=0
isTrue='true'

function checkValueExistOrNot(){
	local valueToTest=$1
	local secondNumber=$2
	local isIterating='true'
	while [ $isIterating == 'true' ]
	do
		rem_b=$(($secondNumber%10))
		secondNumber=$(($secondNumber/10))
		#echo $rem_a
		if [ $secondNumber -lt 10 ]
		then
			isIterating='false'
			#echo $num_a
		fi
		if [[ $valueToTest -eq $rem_b ]] || [[ $valueToTest -eq $secondNumber ]]
		then
			echo 'true'
		else
			echo 'false'
		fi

	done
}

while [ $isTrue == 'true' ]
do
	rem_a=$(($num_a%10))
	num_a=$(($num_a/10))
	echo $rem_a
	#num_a=$rem_a
	status=`checkValueExistOrNot $rem_a $num_b`
	if [ $num_a -lt 10 ]
	then
		isTrue='false'
		echo $num_a
		status=`checkValueExistOrNot $num_a $num_b`
	fi
	#if [ $status -eq 'false' ]
	#then
	#	isTrue='false'
	#	echo "Not a anagram"
	#fi
done
