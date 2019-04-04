#!/bin/bash
#running ping in the background
ping -n 5 google.com &> /dev/null &

while true; do
    ps -ef | grep ping &> /dev/null
    #ps - procceses, -ef lists them, grep - if matches ping return 0
    # if return 1 then the proccess is over
    if [ $? -eq 1 ]; then
        echo "Execution is over!"
        break;
    fi
done
exit 0


