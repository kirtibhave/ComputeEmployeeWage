#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isEmployeePresent=1
randomCheck=$(( RANDOM%2 ));

if [ $isEmployeePresent -eq $randomCheck ]
then
    empHrs=8
    empWagePerHr=20
    salary=$(($empHrs * $empWagePerHr));   
else
    salary=0
fi

