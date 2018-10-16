#!/bin/bash

current_date="`date +%d.%m.%Y`";
current_time="`date +%H:%M`";
current_day="`date +%a`";

echo "";
echo "Today is:"
echo "Date:" $current_date;
echo "Time:" $current_time;
echo "Day:" $current_day;
echo "";

if [[ "$current_time" > "17:05:00" ]] && [[ "$current_time" < "18:45:00" ]]; then
     echo "Witaj na zajęciach";
   else
     echo "Brak zajęć obecnie";
   fi