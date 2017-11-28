#!/bin/bash
###########################
#       Script will Check last Daily Yahoo! process completed for a Zone
#       and calculate delay in current process.
#       If delay is more that '55 Minutes', it would trigger a Yamas Alert.
#       This is accompaning script for yamas plugin - 'yms_check_daily_yahoo'
#       Author - Dennis
###########################
declare -a zone
DELAY=55
zone[1]="East-4:2"
zone[2]="East-6:3"
zone[3]="East-8:4"
zone[4]="East-10:5"
zone[5]="East-12:6"
zone[6]="East-14:7"
zone[7]="East-16:8"
zone[8]="West-2:9"
zone[9]="West-4:10"
zone[10]="West-6:11"
zone[11]="West-8:12"
zone[12]="West-10:13"

LOGFILE=$(ls -rt /home/y/logs/direct_target_newsletter/Home[r,R]un* | grep -v pid | tail -1)
#grep 'Homerun processing completed' $LOGFILE | grep -v Terminating

flag=0

for x in $(echo ${zone[*]})
do
y=$(echo $x | awk -F':' '{print $1}')
grep -q "Homerun processing completed for $y " $LOGFILE
        if [ $? -ne 0 ];
        then
        flag=1
        stuck_zone=$(echo $x | awk -F':' '{print $1}')
        stuck_position=$(echo $x | awk -F':' '{print $2}')
#       echo $stuck_zone $stuck_position
        break
        fi
done

if [ $flag -eq 1 ];
then
        if [ $stuck_position -eq 1 ];
        then
        hr=$(date +%H)
        min=$(date +%M)
                if [ $hr -eq 8 -a $min -gt $DELAY ];
                then
                echo "ERROR"
                echo "Daily Yahoo! Stuck @ $stuck_zone"
                else
                echo "OK"
                echo "Daily Yahoo! Running for $stuck_zone."
                exit
                fi
        elif [ $stuck_position -ge 2 -a $stuck_position -le 13 ];
        then
        previous_position=$[ $stuck_position - 1 ]
        #echo $stuck_zone
                for i in $(echo ${zone[*]})
                do
                j=$(echo $i | awk -F':' -v pos=$previous_position '{if($2 == pos) print $1}')
                [ ${#j} -gt 1 ] && break
                done
        #       echo $j
        #epoch=$(grep "Homerun processing completed for $j" $LOGFILE | cut -c1-13)
        #perl -MDate::Manip -e '$x1=UnixDate( ParseDate("$epoch"), "%s");print $x1'
        hr=$(grep "Homerun processing completed for $j " $LOGFILE | cut -c9-10)
        min=$(grep "Homerun processing completed for $j " $LOGFILE | cut -c12-13)
        last_time=`bc -l <<EOF
        ($hr * 60) + $min
        EOF`
        hr_now=$(date +%H)
        min_now=$(date +%M)
        time_now=`bc -l <<EOF
        ($hr_now * 60) + $min_now
        EOF`
        #echo $last_time
        #echo $time_now
        time_diff=$[ $time_now - $last_time ]
        #echo $time_diff
                if [ $time_diff -gt $DELAY ];
                then
                #echo "$j"
                #echo "ERROR"
                echo "ERROR Daily Yahoo! Stuck @ $stuck_zone"
                else
                echo "OK" >> /dev/null
                #echo "Daily Yahoo! Running for $stuck_zone."
                fi
        fi
else
echo "OK"
DATE=$(grep 'Terminating the script' $LOGFILE | cut -c1-8)
echo "Completed for East2-16 and West2-10 (Set-2), Daily Yahoo! over for $DATE"
fi

#END
