#!/bin/sh

bitcoin-cli -stdin submitpackage < package

ls tx/???? | while read tx
do
  cat $tx | bitcoin-cli -stdin sendrawtransaction
  cat $tx | curl -X POST -sSLd "@-" "https://mempool.space/api/tx" | grep .
done
