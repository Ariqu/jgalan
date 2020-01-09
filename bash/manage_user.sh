#!/bin/bash

user_list=(`cat users.txt`)

function loadUsers() {



    echo "showUsers ..."
    #ladowanie danych z plikow
    echo ${user_list[1}

    echo "Lista:"

    for(( i=0; i<=${#user_list[@]}; i++ )) 
    do

	echo "${user_list[i]}"    
	sudo useradd ${user} -s /sbin/nologin -g "users"

    done 

}


function addUsers() {

    for user in " ${user_list}"
    do
    
	echo "Add user:  ${user}"
    
    done
}

function delUsers() {
    echo "delUsers..."
}

function acceptRemoteLogin() {
    echo "accRemLog.."
}

function deniedRemoteLogin() {
    echo "denRemLog..."
}

function quit() {
    exit 0
}

function help() {
cat << EndOfMessage
--- --- --- ---
OPIS OPCJI SKRYPTU
--- --- --- ---
//////////////////////////////////////////////////////

1. LU - zaladowanie uzytkownikow
3. AU - dodawanie uzytkownikow
4. DU - Usuwanie uzytkownikow
5. ARL - akceptowanie 

EndOfMessage

}



select option in SU HELP AU DU ARL DRL HELP Quit 
do
    case ${option} in
	"SU") showUsers ;;
	"AU") addUsers ;;
	"DU") delUsers ;;
	"ARL") acceptRemoteLogin ;;
	"DRL") deniedRemoteLogin ;;
	"HELP") help ;;
	"Quit") quit ;;
    esac 
done














