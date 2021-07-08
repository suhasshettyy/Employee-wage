#!/bin/bash -x
emp=$((RANDOM%2))
if [ $emp -eq 1 ]
then echo "Employee is present"
else echo "Employee is absent"
fi
