#!/bin/bash -x

present=1;
absent=0;
wage_per_hour=20;
working_hours=8;
wage_per_day=0;
wage_of_part_time_employee=0;
wage_per_hour_of_part_time=10;
working_days=20;
echo Welcome to Employee wage Computation
echo 1 Permanent Employee
echo 2 Part Time Employee
echo Enter choice=
read choice; 
random_value=$RANDOM 
	if [ $random_value -ge $present ]
	then
		case $choice in 
		1)
			echo -------Permanent Employee wage Computation------- 
			echo Employee present
			echo -------Wage per day-------
			wage_per_day=$(( wage_per_hour*working_hours ))
			echo wage_per_day=$wage_per_day
			echo ------Wage per month-------
			wage_per_month=$(( working_hours*working_days*wage_per_hour ))
			echo Wage per month=$wage_per_month;
			;;
		2)
			echo --------Part Time Employee--------
			echo Employee present
			echo -------Wage per day-------
			wage_of_part_time_employee=$(( wage_per_hour_of_part_time*working_hours ));
			echo Wage of part_time employee=$wage_of_part_time_employee
			echo -------Wage per month-------
			wage_per_month=$(( working_hours*working_days*wage_per_hour_of_part_time ))
			echo Wage per month=$wage_per_month;
			;;
		*)
			echo Invalid choice
			;;
		esac


	else
	echo Employee absent
	fi


