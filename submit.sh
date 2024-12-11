#!/bin/sh

out=/tmp/out
test -s package && bitcoin-cli -stdin submitpackage < package \
  | grep '^    "' | grep -o '[0-9a-f]\+'

ls tx/???? | while read tx
do
  cat $tx | bitcoin-cli -stdin sendrawtransaction 2>/dev/null
  cat $tx | curl -X POST -sSLd "@-" "https://mempool.space/api/tx" | grep . > $out
  grep -qw missingorspent $out && rm $tx || cat $out
done
rm $out
