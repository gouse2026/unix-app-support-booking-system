#!/bin/bash

echo "Running scheduled support tasks..."

./monitor.sh &
./health_check.sh
./log_analyzer.sh
