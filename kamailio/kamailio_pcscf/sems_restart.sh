#!/bin/bash
date +%d-%m-%y/%H:%M:%S
 echo "restarting sems"
$(/etc/init.d/ims-sems restart)
$(renice -n -6 -p $(pgrep sems))
