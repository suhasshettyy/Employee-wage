#!/bin/bash -x
emp=$((RANDOM%2))
wage=20
hr=8
if [ $emp -eq 1 ]
then (( wage = $wage * $hr )) 
echo "Employee wage is $wage"
else echo "Employee is absent"
fi
