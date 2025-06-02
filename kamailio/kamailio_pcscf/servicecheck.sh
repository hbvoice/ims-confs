#!/bin/bash

PROCESSCOUNT=`ps -ef | grep kamailio | wc -l`
if [ $PROCESSCOUNT -le 5 ]
then
   `killall -9 kamailio`
   echo "killed all process"
   sleep 5
   `/etc/init.d/kamailio_pcscf start`
else
   echo "PCSCF Service is UP $PROCESSCOUNT"
fi
