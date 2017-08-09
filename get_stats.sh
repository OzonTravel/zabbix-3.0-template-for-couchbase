#!/bin/bash

json=`curl -s localhost:8091/pools/default --max-time 3`
i=0

while true
do
	status=`echo $json |jq ".nodes[$i].status"`
	thisnode=`echo $json |jq ".nodes[$i].thisNode"|tr -d \"`
	if [ "$status" = "null" ]
	then
		break
	fi
	if [ "$thisnode" = "true" ]
        then
		echo $json |jq ".nodes[$i].$1"|tr -d \"
	fi
	((i++))
done
