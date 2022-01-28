#! /bin/bash -x

declare -A undo
undo[dog]="German Shefared,Labradog"
undo[animal]="Human,Loin,Cat"
echo "key in dictionary " ${!undo[@]}
echo "Value in dictionary " ${undo[@]}
echo "Value of dictionary in dog key " ${undo[dog]}
