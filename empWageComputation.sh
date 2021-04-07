#!/bin/bash 

isAbsent=0
isPresent=1
partTime=2
wagePerHour=20
fullDay=8
halfDay=4
workingDay=20
attendance=$((RANDOM%3))
case $attendance in
	$isPresent)
		wage=$(( $wagePerHour * $fullDay * $workingDay ))
		echo "Employee is Present and his/her salary is: " $wage ;;
	$partTime)
		wage=$(( $wagePerHour * $halfDay * $workingDay ))
		echo "Employee is Present and his/her salary is: " $wage ;;
	*)
	echo Employee is Absent
esac
