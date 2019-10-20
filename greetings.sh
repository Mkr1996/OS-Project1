greeting.sh

#!/bin/bash

$temph=`date | cut -c 12-13` #date command with pipe line opeartor to cut cols with option -c col from 12 to 13

$dat=`date +"%A %d in %B of %Y(%r)` # formating date

if [ $temph -lt 12 ] #compare time less than 12 i.e morning -lt is less than

then

mess = "Good morning $LOGNAME, Have a nice day" # create message LOGNAME is environment variable

fi #end if

if [ $temph -gt 12 -a $temph -le 16]  #compare time greater than 12 i.e afternoon -gt is greater than

then

mess = "Good afternoon `$LOGNAME`"

fi

if [ $temph -gt 16 -a $temph -le 18] # -le lessthan or equal

then

mess = "Good Evening $LOGNAME"

fi

if [ $temph -gt 18 -a $temph -le 24]

thenm

mess = "Hello $LOGNAME"

fi

echo -e "$mess \n This is $dat"

class example named as example.sh

#!/bin/bash
echo "Hello $LOGNAME" #logged username
echo "current date is `date`" # current date
echo "user is `who i am`"
echo "current directory `pwd`" #current working direcory