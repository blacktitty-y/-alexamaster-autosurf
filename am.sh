#!/bin/bash
while :
do
  sleep 5
ip=$(curl cip.cc)
if [[ $ip =~ "地区或运营商" ]]
then
  continue
else
  npm start
  break
fi
done
