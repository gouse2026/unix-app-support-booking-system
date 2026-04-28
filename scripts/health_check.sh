#!/bin/bash

PROCESS_NAME="booking_app.py"

ps -ef | grep $PROCESS_NAME | grep -v grep > /dev/null

if [ $? -ne 0 ]; then
    echo "Service DOWN! Restarting..."
    python3 ../app/booking_app.py &
else
    echo "Service is running fine."
fi
