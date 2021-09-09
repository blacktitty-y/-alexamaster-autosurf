#!/bin/bash

while :
do
  sleep 5
ip=$(curl cip.cc)
if [[ $ip =~ "地区或运营商" ]]
then
  continue
else
  break
fi
done

./config/msg.sh
npm start
