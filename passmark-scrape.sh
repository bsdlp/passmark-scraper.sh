#!/usr/bin/env bash

tmpd=$(mktemp -d 2>/dev/null || mktemp -d -t 'tmpd')
cookiejar="${tmpd}/cookies.txt"

curl -c $cookiejar https://www.cpubenchmark.net/CPU_mega_page.html -o /dev/null -sS

curl -H  'x-requested-with: XMLHttpRequest' -b $cookiejar https://www.cpubenchmark.net/data/

rm -rf $tmpd
