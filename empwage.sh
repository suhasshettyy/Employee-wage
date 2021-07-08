#!/bin/bash -x
emp=$((RANDOM%3))
wage=20
hr=8
partime=8
if [ $emp -eq 1 ]
then (( wage = $wage * $hr )) 
echo "Employee wage is $wage"
elif [ $emp -eq 2 ]
then (( wage = $wage * $partime ))
echo "Employee Part Time Wage is $wage"
else echo "Employee is absent"
fi
