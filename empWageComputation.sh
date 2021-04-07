#!/bin/bash 

isAbsent=0
isPresent=1
wagePerHour=20
fullDay=8
attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	wage=$(( $wagePerHour * $fullDay ))
	echo "Employee is Present and his/her salary is: " $wage
	
else
	echo Employee is Absent	
fi
