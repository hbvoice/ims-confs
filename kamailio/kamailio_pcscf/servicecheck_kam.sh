#!/bin/bash
date +%d-%m-%y/%H:%M:%S
PROCESSCOUNT=`ps -ef | grep kamailio | wc -l`
if [ $PROCESSCOUNT -le 5 ]
then
   `killall -9 kamailio`
   echo "killed all process"
   sleep 5
#   rm -rf /usr/local/etc/kamailio_pcscf/mt_custom_original.cfg
#   rm -rf /usr/local/etc/kamailio_pcscf/dispatcher.list.save
#   rm -rf /usr/local/etc/kamailio_pcscf/dispatcher.list.save.1
   `/etc/init.d/kamailio_pcscf start`
   renice -n -13 -p $(pgrep kamailio)
   rm -rf /var/cores/*
 #  sleep 20
 #  `/etc/init.d/ims-sems restart`
 #  renice -n -6 -p $(pgrep sems)
 # Hamid commented theselines. 
else
   echo "PCSCF Service is UP $PROCESSCOUNT"
fi
