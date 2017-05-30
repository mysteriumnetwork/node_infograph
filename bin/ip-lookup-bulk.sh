#!/usr/bin/env bash

# Usage example:
#> ip-lookup-bulk.sh ips.txt

FILE=$1
FILE_OUTPUT="${FILE}.csv"

rm -f $FILE_OUTPUT
echo '"ip";"hostname";"country";"region";"city";"organization";location' > $FILE_OUTPUT

cat $FILE \
    | xargs -I% ./bin/ip-lookup.sh % \
    >> $FILE_OUTPUT
