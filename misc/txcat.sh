#!/bin/sh
grep -v '^#' $1 | tr -d ' \n'
echo
