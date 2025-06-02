#!/bin/bash

PROCESSCOUNT=`ps -ef | pgrep sems | wc -l`
if [ $PROCESSCOUNT -eq 0 ]
then
   `/etc/init.d/ims-sems start`
   renice -n -9 -p $(pgrep sems)
 #  sleep 20
 #  `/etc/init.d/ims-sems restart`
 #  renice -n -6 -p $(pgrep sems)
 # Hamid commented theselines. 
else
   echo "sems Service is UP $PROCESSCOUNT"
fi
