#!/bin/bash
ip=$(curl cip.cc)
while [[ $ip =~ "地区或运营商" ]] ; do
  sleep 5
done
npm start
