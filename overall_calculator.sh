#!/bin/bash
# Footbag overall calculator based on following scoring:
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
# It also takes into account weights for events.
E_NOARGS=85
E_BADARGS=86
score=0
name="$1"
weights=( $( cat ./weights ) )

if [ -z "$1" ]
then
	echo "Usage: $0 player_name classification"
	exit $E_NOARGS
fi

if [ $# -lt 2 ]
then
	echo "Usage: $0 player_name classification"
	exit $E_BADARGS
fi

shift

j=0
for i in "$@"
do
	
	if [[ ! "$i" =~ ^[0-9]+$ ]]
	then
			echo "Classification is not a number"
			exit $E_BADARGS
	else 
		case "$i" in
			"1" )	(( part_score[j]=25 ));;
			"2" )	(( part_score[j]=18 ));;
			"3" )	(( part_score[j]=15 ));;
			"4" ) 	(( part_score[j]=12 ));;
			"5" )	(( part_score[j]=10 ));;
			"6" )	(( part_score[j]=8 ));;
			"7" )	(( part_score[j]=6 ));;
			"8" )	(( part_score[j]=4 ));;
			"9" )	(( part_score[j]=2 ));;
			"10" )	(( part_score[j]=1 ));;
		esac
		j=$(( j+1 ))
	fi
done

i=0
while [[ "$i" -lt "${#weights[@]}" ]]
do
	score=$( echo "$( echo "${weights[i]} * ${part_score[i]}" | bc ) + $score" | bc )
	i=$(( i+1 ))
done

echo "$score $name" >> ./scores

exit $?
