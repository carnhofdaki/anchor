#!/bin/sh
utf=/dev/shm/UpdateTip-bitcoin 
test -r $utf && . $utf
d=" "
if
  test "$1" = "-b" -o "$1" = "-h"
then
  BC=${height:-$(curl -sSL "https://mempool.space/api/blocks/tip/height")}
  BH=${best:-$(curl -sSL "https://mempool.space/api/block-height/$BC")}
  test "$1" = "-b" && printf "%s$d" "$BC" || { 
    d=""; l=$(printf "%x" $BC | wc -c); lh=$((l+l%2)); printf "%0${lh}x" "$BC";
  }
else
  BH=${1:-$(curl -sSL "https://mempool.space/api/blocks/tip/hash")}
fi

last=${BH#${BH%????}}

nz=$(echo $BH | fold -w 4 | grep -cE '^[^0]{4}$')
z=$(echo $BH | fold -w 4 | grep -c '^0000$')
printf "%s$d%x\n" "$last" \
  "$(((${nz} <<4) + ${z}))" \
  | tr 0 .
