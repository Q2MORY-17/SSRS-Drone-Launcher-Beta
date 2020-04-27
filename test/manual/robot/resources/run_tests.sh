#!/bin/bash

IP=$(python ./library/getip.py)
PORT=5000
URL="http://$IP:$PORT"
BROWSER="chrome"
OPTS="-v URL:$URL -v BROWSER:$BROWSER -d results"

python ../../../python/dronelauncher_python.py &> /dev/null &
DRONE_PID=$!

if [ $# -eq 0 ]; then           #If argumentlist is empty, run all tests.
    for i in *.robot
    do
	robot $OPTS $i
    done
    
    if [ -x "$(command -v firefox)" ]; then
	BROWSER="firefox"
	OPTS="-v URL:$URL -v BROWSER:$BROWSER -d results"
	
	for i in *.robot             
	do
	    robot $OPTS $i
	done
    fi

else                            # Run tests provided by argument.
    for i in $@
    do
	robot $OPTS $i
    done
    
    if [ -x "$(command -v firefox)" ]; then
	BROWSER="firefox"
	OPTS="-v URL:$URL -v BROWSER:$BROWSER -d results"
	for i in $@
	do
	    robot $OPTS $i
	done
    else
	echo -e "\nFirefox not installed! skipping firefox tests...\n"
    fi
fi

kill $DRONE_PID

exit 0
