#!/bin/bash -x
fulltime=1
partime=2
empcheck=$((RANDOM%3))
wageperhr=20
dayspermonth=20
maxhrsinmonth=100
totalemphr=0
totalworkingdays=0
while [[ $totalemphr -lt $maxhrsinmonth && $totalworkingdays -lt $dayspermonth ]]
do 
((totalworkingdays++))
case "$empcheck" in
$fulltime)
emphrs=8
;;
$partime)
emphrs=8
;;
*)
emphrs=0
;;
esac
totalemphr=$((totalemphr+emphrs))
done
totalsalary=$((totalemphr*wageperhr))

