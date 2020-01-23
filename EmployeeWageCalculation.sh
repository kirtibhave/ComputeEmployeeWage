#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#CONSTANTS
PART_TIME_EMPLOYEE=1
FULL_TIME_EMPLOYEE=2
NUM_OF_WORKING_DAYS=20
EMP_WAGE_PER_HR=20
MAX_HRS_IN_MONTH=100
TOTAL_EMP_HRS=0
TOTAL_WORKING_DAYS=0
TOTAL_SALARY=0

while [[ $TOTAL_EMP_HRS -lt $MAX_HRS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $NUM_OF_WORKING_DAYS ]]
do
    ((TOTAL_WORKING_DAYS++))
     employeeCheck=$((RANDOM%3))
     case $employeeCheck in
     	     $FULL_TIME_EMPLOYEE)
                 empHrs=8 ;;
           $PART_TIME_EMPLOYEE)
                 empHrs=4 ;;
           *)
                 empHrs=0 ;;
     esac
        TOTAL_EMP_HRS=$(($empHrs*$TOTAL_EMP_HRS))
done
        TOTAL_SALARY=$(($TOTAL_EMP_HRS+$EMP_WAGE_PER_HR))
