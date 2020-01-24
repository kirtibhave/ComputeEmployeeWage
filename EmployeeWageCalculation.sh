#!/bin/bash 
echo "Welcome to Employee Wage Computation Program"

#CONSTANTS
PART_TIME_EMPLOYEE=1
FULL_TIME_EMPLOYEE=2
NUM_OF_WORKING_DAYS=20
EMP_WAGE_PER_HR=20
MAX_HRS_IN_MONTH=4
TOTAL_WORKING_DAYS=0
TOTAL_SALARY=0
TOTAL_EMP_HRS=0
#VARIABLES
empHrs=0
 function getWorkingHours()
  {
     case $1 in
     	     $FULL_TIME_EMPLOYEE)
                 empHrs=8 ;;
           $PART_TIME_EMPLOYEE)
                 empHrs=4 ;;
           *)
                 empHrs=0 ;;
     esac
     echo $empHrs
   }
function  dailyWageCalculate()
{
  workHrs=$1
  local wage=$(($workHrs*$EMP_WAGE_PER_HR))
  echo $wage
}

while [[ $TOTAL_EMP_HRS -lt $MAX_HRS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $NUM_OF_WORKING_DAYS ]]
do
        ((TOTAL_WORKING_DAYS++))
        empHrs="$( getWorkingHours $((RANDOM%3)) )"
        totalWorkHr=$(($totalWorkHr+$empHrs))
        empDailyWage[$TOTAL_WORKING_DAYS]="$( dailyWageCalculate $empHrs )"
		  echo "Wage for day" $TOTAL_WORKING_DAYS  "is" $(($empHrs*$EMP_WAGE_PER_HR))
done
        TOTAL_SALARY=$(($totalWorkHr+$EMP_WAGE_PER_HR))
        echo "Daily wage " ${empDailyWage[@]}


