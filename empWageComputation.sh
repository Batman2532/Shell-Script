#!/bin/bash 

isAbsent=0
isPresent=1
partTime=2
wagePerHour=20
fullDay=8
halfDay=4
maxWorkingDays=20
maxWorkingHr=100

totalEmpHr=0
totalWorkingDays=0

function workHours() {
	echo $totalEmpHr
}

while [ $totalEmpHr -le $maxWorkingHr ] | [ $totalWorkingDays -le $maxWorkingDays ]
do
	attendance=$((RANDOM%3))
	
case $attendance in
	$isPresent)
		((totalWorkingDays++))
		totalEmpHr=$(($totalEmpHr + 8))
		workHours $totalEmpHr
		wage=$(( $wagePerHour * $fullDay * $maxWorkingDays ))
		echo "Employee is Present and his/her salary is: " $wage ;;
	$partTime)
		((totalWorkingDays++))
		totalEmpHr=$(($totalEmpHr + 4))
		wage=$(( $wagePerHour * $halfDay * $maxWorkingDays ))
		 workHours $totalEmpHr
		echo "Employee is Present and his/her salary is: " $wage ;;
	*)
	echo Employee is Absent
esac
done
echo $totalWorkingDays $totalEmpHr
