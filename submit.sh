#!/bin/sh

bitcoin-cli -stdin submitpackage < package

ls ???? | while read tx
do
  cat $tx | bitcoin-cli -stdin sendrawtransaction
done
