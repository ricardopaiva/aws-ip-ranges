#!/bin/sh
curl -s https://ip-ranges.amazonaws.com/ip-ranges.json | jq -r '.prefixes[] | select(.region=="us-east-1") | select(.service=="AMAZON") .ip_prefix' > ip-ranges-amazon-us-east-1.txt
# curl -s https://ip-ranges.amazonaws.com/ip-ranges.json | jq -r '.prefixes[] | select(.region=="us-east-1") | select(.service=="AMAZON") .ip_prefix | iprange' > ip-ranges-amazon-us-east-1_range.txt
