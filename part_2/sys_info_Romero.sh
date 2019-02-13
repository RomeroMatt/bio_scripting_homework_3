#!/bin/bash

#Below are commands that give us the time and date, a list of user, and the system uptime
time=`date | awk '{print $2, $3, $4}'`

#Now we will print to the screen
printf "Here is the date and time - ${time} \n"
