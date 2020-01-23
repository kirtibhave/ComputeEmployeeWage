#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

EmployeePresent=1
PartTimeEmployee=1
FullTimeEmployee=2
randomCheck=$(( RANDOM%2 ));
empWagePerHr=20

if [ $PartTimeEmployee -eq $randomCheck  ]
then
    empHrs=4
elif [ $FullTimeEmployee -eq $randomCheck ]
then
    empHrs=8
else
    empHrs=0
fi
salary=$(($empHrs * $empWagePerHr));  
