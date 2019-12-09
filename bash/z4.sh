#!/bin/bash

#porownania:

if [ 5 -gt 4]; then 
    echo true
else 
    echo false
fi

#operatory logiczne

# && : AND
# || : OR - lub
# ! : NOT nie

if [ true ] && [ true ]; then
    echo true;
else

    echo fale;
fi

if [ 5 -eq 5 ] && [ 5 != 5 ]; then
    echo true
else
    echo false
fi

#operator not ! - zaprzeczenie

if ! [ 5 -eq 5 ]; then
    echo true
else
    echo fasle
fi

if [ 5 -gt 5 ]; then
    echo "1"
elif [5 -eq 5 ]; then
    echo "2"
else 
    echo "3"
fi


#echo instrukcja wielokrotnego wyboru - case

echo -n "Podaj miesiąc: [1..12]" 
read month

case ${month} in 
    "1") echo "January" ;;
    "2") echo "February" ;;
    "3") echo "March" ;;
    "4") echo "April" ;;
    "5") echo "May" ;;
    "6") echo "June" ;;
    "7") echo "July" ;;
    "8") echo "August" ;;
    "9") echo "September" ;;
    "10") echo "October" ;;
    "11") echo "November" ;;
    "12") echo "December" ;;
esac





