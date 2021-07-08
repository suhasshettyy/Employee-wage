#!/bin/bash -x
fulltime=2
parttime=1
wagePerHr=20
daysPerMonth=20
maxHrsinMonth=100
totalEmpHr=0
totalworkingdays=0

function workinghours
{
case $1 in
$fulltime)
empHrs=8
;;
$parttime)
empHrs=8
;;
*)
empHrs=0
;;
esac
echo $empHrs
}

function dailywagecal
{
local empHours=$1
wage=$((empHours*wagePerHr))
echo $wage
}
while [[ $totalEmpHr -lt $maxHrsinMonth && $totalworkingdays -lt $daysPerMonth ]]
do
((totalworkingdays++))
empHours="$( workinghours $((RANDOM%3)) )"
totalEmpHr=$((totalEmpHr+empHours))
empdailywage["$totalworkingdays"]="$( dailywagecal $empHours )"
done
totalsalary="$( dailywagecal $totalEmpHours )"
echo "Daily wage" ${empdailywage[@]}
echo "All keys " ${!empdailywage[@]}
