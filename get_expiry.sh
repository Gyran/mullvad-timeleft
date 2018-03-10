#!/bin/sh

MULLVAD_API_URL='https://api.mullvad.net/rpc/'
account_token=$1

if [ -z $account_token ]
then
  echo 'Usage: ./get_expiry ACCOUNT_TOKEN'
  exit -1
fi

result=$(curl -s -d "{\"id\": 1, \"jsonrpc\": \"2.0\", \"method\":\"get_expiry\", \"params\":[\"$account_token\"] }" -H "Content-Type: application/json" $MULLVAD_API_URL)

echo $result
