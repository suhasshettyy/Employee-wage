#!/bin/bash -x
emp=$((RANDOM%3))
wage=20
hr=8
partime=8
days=20
case "$emp" in
1) (( wage = ($wage * $hr) * $days )) 
echo "Employee wage is $wage"
;;
2) (( wage = ($wage * $partime) * $days ))
echo "Employee Part Time Wage is $wage"
;;
3) echo "Employee is absent"
;;
*) echo "invalid"
;;
esac
