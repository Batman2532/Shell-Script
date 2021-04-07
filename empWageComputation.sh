#!/bin/bash 

isAbsent=0
isPresent=1
partTime=2
wagePerHour=20
fullDay=8
halfDay=4
attendance=$((RANDOM%3))
case $attendance in
	$isPresent)
		wage=$(( $wagePerHour * $fullDay ))
		echo "Employee is Present and his/her salary is: " $wage ;;
	$partTime)
		wage=$(( $wagePerHour * $halfDay ))
		echo "Employee is Present and his/her salary is: " $wage ;;
	*)
	echo Employee is Absent
esac
