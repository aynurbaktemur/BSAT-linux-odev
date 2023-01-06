#!/bin/bash

dir="/home/aynur/bsm"
kayit_dosyasi="/home/aynur/bsm/kayit.txt"

c=`cat $kayit_dosyasi | wc -c`
while:
do
    zaman=$(date +"%d.%m.%y %T")
    echo kayit.txt dosyasındaki karakter sayısı $c dır. ;
    echo kayit.txt dosyası $zaman tarihinde güncellenmiştir. ;
    echo "     ";
    
    sleep 10
done
