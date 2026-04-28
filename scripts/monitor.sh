#!/bin/bash

LOG_FILE="../logs/app.log"

echo "Monitoring logs..."

tail -Fn0 $LOG_FILE | while read line; do
    echo "$line" | grep "ERROR" > /dev/null
    if [ $? = 0 ]; then
        echo "🚨 Error detected!"
        ../alerts/alert.sh "$line"
    fi
done
