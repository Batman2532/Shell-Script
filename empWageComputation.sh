#!/bin/bash 

isAbsent=0
isPresent=1
partTime=2
wagePerHour=20
fullDay=8
halfDay=4
attendance=$((RANDOM%3))
if [ $attendance -eq 1 ]
then
	wage=$(( $wagePerHour * $fullDay ))
	echo "Employee is Present and his/her salary is: " $wage
elif [ $attendance -eq 2 ]
then
	wage=$(( $wagePerHour * $halfDay ))
	echo "Employee is Present and his/her salary is: " $wage
else
	echo Employee is Absent
fi
