#!/usr/bin/env bash

# Usage example:
#> ip-lookup.sh 172.217.22.163

IP=${1%$'\r'}

curl "http://ipinfo.io/$IP" \
    | jq -r --arg IP "$IP" '"\"" + $IP + "\";\"" + .hostname + "\";\"" + .country + "\";\"" + .region + "\";\"" + .city + "\";\"" + .org + "\";\"" + .loc + "\""'
