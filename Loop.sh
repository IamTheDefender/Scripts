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
sleep 280
echo "Yooo"
sleep 280
echo "Easy Loop?"
sleep 280
ping google.com
sleep 280
echo "AAAA!"
sleep 280
echo "Hello!"
sleep 280
clear
jumpto $start
