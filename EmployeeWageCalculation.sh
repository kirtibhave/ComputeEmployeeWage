#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

isEmployeePresent=1
randomCheck=$(( RANDOM%2 ));

if [ $isEmployeePresent -eq $randomCheck ]
then 
    echo "employee is present"
else
    echo "employee is absent"
fi
