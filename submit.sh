#!/bin/sh

bitcoin-cli -stdin submitpackage < package

ls tx/???? | while read tx
do
  cat $tx | bitcoin-cli -stdin sendrawtransaction
done
