#!/bin/bash

for x in j d t
do
    echo ${x}
done

for plik in *
do
    echo ${plik}
done

#i++ = i=i+1

#i przyjmuje wartosc jeden i=1
#i=1 1<10 -> true
#i=2 2<=10 -> true
#i=3 3<=10 - > ture


for ((i=1; i<=3; i++))
do
    echo ${i}
done

j=1

while [ ${j} -le 5 ]; do
    echo -e "\0227"
    j=$[j+1]
done


