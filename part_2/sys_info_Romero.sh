#!/bin/bash

#Below are commands that give us the time and date, a list of user, and the system uptime. We will add "\n" for clean line breaks
#to make things easier to read.
time=`date | awk '{print $2, $3, $4}'`
printf "\n"

#Now we will print to the screen
printf "Here is the date and time - ${time} \n"

#Let's see who is logged on the asc
who
printf "\n"
printf "Too much info. Let's only display username. \n"
printf "\n"

#That looks messy. Let's clean it up with an awk command used with a pipe
who | awk '{print $1}'

#Now, let's look at the uptime.
printf "\n"
printf "Here's the uptime \n"
uptime -p
