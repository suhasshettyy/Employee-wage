#!/bin/bash -x
emp=$((RANDOM%3))
wage=20
hr=8
partime=8
case "$emp" in
1) (( wage = $wage * $hr )) 
echo "Employee wage is $wage"
;;
2) (( wage = $wage * $partime ))
echo "Employee Part Time Wage is $wage"
;;
3) echo "Employee is absent"
;;
*) echo "invalid"
;;
esac
