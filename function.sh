#! /bin/bash -x

isGlobal="Mayank"

#Function is not returning any thing
function checkFunction(){
#body of the function
	echo $isGlobal
	echo "From inside the check function without parmartet"
}

function checkFunctionWithParmenters(){
#body of the function
	local partment_a=$1
	local parameter_b=$2
	isGlobal="Update value"
	echo $isGlobal
	echo "Value from partmeterized function " $partment_a " second " $parameter_b
}

#Function is returning some thing
function returnSomeValueFunction(){
	local totalValue=$(($1 + $2))
	echo $totalValue
}

checkFunction
checkFunctionWithParmenters "firstParament" "SecondParmeter"
valueAfterAdding=`returnSomeValueFunction 1 2`
echo "value After Adding " $valueAfterAdding
