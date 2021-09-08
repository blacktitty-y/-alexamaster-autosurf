#!/bin/bash
ip=$(curl cip.cc)
if [[ $ip =~ "地区或运营商" ]];then
  :
else
  npm start
fi
