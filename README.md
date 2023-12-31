# Freestyle footbag overall calculator

This is freestyle footbag overall calculator written in bash.

### Conditions :

- Each freestyle event is weighted the same. 
- The more points, the higher place.
- Points are added for classification as follows:
	- 1st: 25 points
	- 2nd 18 points
	- 3rd: 15 points
	- 4th: 12 points
	- 5th: 10 points
	- 6th: 8 points
	- 7th: 6 points
	- 8th: 4 points
	- 9th: 2 points
	- 10th: 1 point

### Usage :

Make files executable:
```sh
$ sudo chmod +x overall_calculator.sh results_sort.sh
```
Invoke overall_calculator.sh with player name and his classifications, for example:
```sh
$ ./overall_caltulator.sh Player1 3 2 5 7
```
After invoking overall_calculator.sh for every player, sort the scores to get the results in file results.txt
```sh
$ ./results_sort.sh
```
