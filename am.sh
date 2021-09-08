#!/bin/bash
ip="地区或运营商"
while [[ $ip =~ "地区或运营商" ]] ; do
  sleep 5
  ip=$(curl cip.cc)
done
npm start
