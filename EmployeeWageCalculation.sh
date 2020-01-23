#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
PartTimeEmployee=1
FullTimeEmployee=2
EmployeeCheck=$(( RANDOM%3 ));
empWagePerHr=20

case $EmployeeCheck in
     $FullTimeEmployee)
                 empHrs=8 ;;
     $PartTimeEmployee)
                 empHrs=4 ;;
     *)
                 empHrs=0 ;;
esac
     salary=$(($empHrs*$empWagePerHr));
