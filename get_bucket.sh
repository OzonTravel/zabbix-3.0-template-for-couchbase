#!/bin/bash

json=`curl -s -u user:123456 localhost:8091/pools/default/buckets/ --max-time 3 `

str_start='{"data":['
str_end=']}'

result_string="$str_start"
i=0

while true
do
        bucket=`echo $json |jq ".[$i].name"`
	if [ "$bucket" = "null" ]
	then
		break
	fi
	((i++))
	result_string="$result_string"'{"{#BUCKET_NAME}":'"$bucket"'}'
	result_string="$result_string"','
done


result_string="$result_string""$str_end"
echo $result_string

