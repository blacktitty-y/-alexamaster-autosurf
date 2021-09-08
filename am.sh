#!/bin/bash
ip=$(curl cip.cc)
while [[ $ip =~ "天威" ]] ; do
  sleep 5
done
npm start
