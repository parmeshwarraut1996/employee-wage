#!/bin/bash -x

present=1;
absent=0;
wage_per_hour=20;
wage_per_day=0;
wage_of_part_time_employee=0;
wage_per_hour_of_part_time=10;
working_days=20;
total_working_hours=0;
total_working_days=0;
total_wage_of_Employee=0;
present_working_days=0;
absent_days=0;
getWorkingHours(){
	working_hours=$1;
}
getWorkingHours 8

echo Welcome to Employee wage Computation
echo 1 Permanent Employee
echo 2 Part Time Employee
echo Enter choice = 
read choice
until (( $total_working_days == 20   && $total_working_hours >= 100 ))
do
 
	random_value=`awk -v seed="$RANDOM" 'BEGIN { srand(seed);  printf("%.1f\n", rand()) }'`
	random_value=$( printf "%.0f" $random_value )
        echo random_value=$random_value

		if [ $random_value -ge $present ]
		then
			case $choice in 
			1)

                                echo -------Permanent Employee wage Computation------- 
				echo Employee present
				total_wage_of_Employee=$((wage_per_hour * working_hours))
				((wage_per_day+=total_wage_of_Employee))
				((present_working_days+=1))
				echo working_day=$total_working_days
				echo -------Wage per day-------
				echo Wage per day =$((wage_per_hour * working_hours))
				echo ------Wage per month-------
				wage_per_month=$(( working_hours*working_days*wage_per_hour ))
				echo Wage per month =$wage_per_month;
				echo 
				((total_working_hours=total_working_hours + working_hours))
				;;
			2)
				echo --------Part Time Employee--------
				echo Employee present
				total_wage_of_Employee=$((wage_per_hour_of_part_time*working_hours))
				((wage_per_day+=total_wage_of_Employee))
				((present_working_days+=1))
				echo working_days=$total_working_days
				echo -------Wage per day-------
				wage_of_part_time_employee=$(( wage_per_hour_of_part_time*working_hours ));
				echo Wage of part_time employee=$wage_of_part_time_employee
				echo -------Wage per month-------
				wage_per_month=$(( working_hours*working_days*wage_per_hour_of_part_time ))
				echo Wage per month=$wage_per_month;
         			((total_working_hours=total_working_hours + working_hours))
                                ;;
			*)
				echo Invalid choice
				;;
			esac


		else
		#echo Employee absent
		((total_working_hours=total_working_hours + working_hours))
                ((absent_days+=1))
		echo working_day=$total_working_days
		echo Employee absent
		fi
		((total_working_days+=1))
done

echo total_present=$present_working_days;
echo total_absent=$absent_days;
echo total_wage=$wage_per_day;
