#!/bin/bash

#petla until

i=10

until [ ${i} -eq 10 ]; do
    echo ${i}
    i=$[i+1]

done

#petla select

echo "podaj opcje: "

select opcja in File Edit Quit
do
    case ${opcja} in

	"File") echo "Wybrano opcje ${opcja}" ;;
	"Edit") echo "wybrano opcje ${opcja}" ;;
	"Quit") exit ;;
    *) "Podaj liczy z zakresu [1..3]" ;;
    esac
done

