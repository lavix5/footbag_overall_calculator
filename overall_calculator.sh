#!/bin/bash
# Footbag overall caluclator based on fallowing scoring:
#1st: 25 points
#2nd 18 points
#3rd: 15 points
#4th: 12 points
#5th: 10 points
#6th: 8 points
#7th: 6 points
#8th: 4 points
#9th: 2 points
#10th: 1 point

E_NOARGS=85
E_BADARGS=86
score=0
name="$1"

if [ -z "$1" ]
then
	echo "Usage: "$0" player_name classification"
	exit $E_NOARGS
fi

if [ $# -lt 2 ]
then
	echo "Usage: "$0" player_name classification"
	exit $E_BADARGS
fi

shift

for i in "$@"
do
	
	if [[ "$i" =~ "[0-9]+" ]]
	then
			echo "Classification is not a number"
			exit E_BADARGS
	else 
		case "$i" in
			"1" )	(( score=score+25 ));;
			"2" )	(( score=score+18 ));;
			"3" )	(( score=score+15 ));;
			"4" ) 	(( score=score+12 ));;
			"5" )	(( score=score+10 ));;
			"6" )	(( score=score+8 ));;
			"7" )	(( score=score+6 ));;
			"8" )	(( score=score+4 ));;
			"9" )	(( score=score+2 ));;
			"10" )	(( score=score+1 ));;
		esac
	fi
done

echo "$score $name" >> ./scores

exit $?
