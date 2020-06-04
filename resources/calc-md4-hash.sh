#!/bin/bash
printf "Enter password: \n"
read -s password
 
if iconv -l | grep -lq 'UTF-16LE' ; then
    echo -n $password | iconv -t UTF-16LE | openssl md4
else
    echo -n $password | iconv -t utf16le | openssl md4
fi
