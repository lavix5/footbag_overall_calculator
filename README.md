# Freestyle footbag overall calculator

This is freestyle footbag overall calculator written in bash. This branch allows for calculations with weighted competition scores. Yes, I know bash is not handling fractions.

### Conditions :

- Freestyle events are weighted. Weights are placed in file "weights" separated by space or each in newline. Keep 2 decimal points for each weight (for example 0.7 write as 0.70). 
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
Create file with weights (for example 0.50 for circle, 0.25 for routine, 0.25 for sick3):
```sh
$ echo "0.50 0.25 0.25" > weights
```
Invoke overall_calculator.sh with player name and his classifications, (for example 2nd in circle, 1st in routine and 3rd in sick3):
```sh
$ ./overall_caltulator.sh player_name 2 1 3
```
It's important to write scores in the same events order as the weights were written in "weights" file.
After invoking overall_calculator.sh for every player, sort the scores to get the results in file results.txt
```sh
$ ./results_sort.sh
```
Print results to screen:
```sh
cat ./results.txt
```
