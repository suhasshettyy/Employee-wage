#!/bin/bash -x
fulltime=1
partime=2
wageperhr=20
dayspermonth=20
maxhrsinmonth=100
totalemphr=0
totalworkingdays=0

function workinghours
{
case "$1" in
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
echo $emphrs
}

function dailywagecal
{
wage=$((emphrs*wageperhr))
echo $wage
}
while [[ $totalemphr -lt $maxhrsinmonth && $totalworkingdays -lt $dayspermonth ]]
do
((totalworkingdays++))
emphrs="$( workinghours $((RANDOM%3)) )"
totalemphr=$((totalemphr+emphrs))
empdailywage[$totalworkingdays]="$( dailywagecal $emphrs)"
done
totalsalary="$( dailywagecal $totalemphrs )"
echo "Daily wage" ${empdailywage[@]}

