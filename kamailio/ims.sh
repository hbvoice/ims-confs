#!/bin/bash
/opt/kamailio/sbin/kamailio -f /etc/kamailio_icscf/kamailio.cfg --debug=0
sleep 5
/opt/kamailio/sbin/kamailio -f /etc/kamailio_scscf/kamailio.cfg --debug=0
sleep 5
/opt/kamailio/sbin/kamailio -f /etc/kamailio_pcscf/kamailio.cfg --debug=0 -m 32 -M 64
#sleep 5
#/opt/kamailio/sbin/kamailio -f /etc/kamailio_mgcf/kamailio.cfg --debug=0
