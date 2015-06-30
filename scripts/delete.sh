#!/bin/bash

URL=$1
SESSION=$2
if [ "${URL}" == "" -o "${SESSION}" == "" ]; then
    echo "Usage: $0 <url> <session_token>"
    exit 1
fi

echo "DELETE ${URL}"
curl -v -s -H "Content-Type: application/json" -H "Cookie: frontend=${SESSION}" -X DELETE "${URL}" | jq '.'