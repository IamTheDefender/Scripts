#!/bin/bash
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

start=${1:-"start"}

jumpto $start

start:
echo "Ping Pong"
wait 280
echo "Yooo"
wait 280
echo "Easy Loop?"
wait 280
ping google.com
wait 280
echo "AAAA!"
wait 280
echo "Hello!"
wait 280
clear
jumpto start
