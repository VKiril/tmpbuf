#!/bin/bash

chmod +x bootstrap.sh
NOW=`date '+%F_%H:%M:%S'`
./bootstrapa.sh &> log.$NOW.txt
