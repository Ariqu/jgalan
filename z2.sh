#!/bin/bash


#cytowanie "" double quote 
echo -e "POlecenie \t ls\n"

tablica=(element1 element2 element3)
echo ${#tablica[@]}
echo ${tablica[*]}
echo ${tablica[0]}


#Uzycie odwrotnego cudzysłowu


echo "Wynik ls `ls`"

#apostrof - single quate ''


echo  'Polecenie \t ls \n'

x=15

echo 'Zmienna to: ${x}'

x=15

echo "mienna to: ${x}"

wd=`pwd`

echo ${wd}

#zmienne tablicowe 

#modyfikacja wartosci zmiennej

tab=(1 2 3 4 5)

tab[2]=10
echo ${tab[@]}