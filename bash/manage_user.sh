#!/bin/bash

function loadUsers() {

    echo "LoadUsers ..."

}

function showUsers() {
    echo "ShowUsers..."
}

function addUsers() {
    echo "AddUsers ..."
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
2. SU - pokazanie zaladowanych uzytkownikow
3. AU - dodawanie uzytkownikow
4. DU - Usuwanie uzytkownikow
5. ARL - akceptowanie 

EndOfMessage




select in HELP LU SU AU DU ARL DRL HELP Quit 
do
    case ${option} in
	"LU") loadUsers ;;
	"SU") showUsers ;;
	"AU") addUsers ;;
	"DU") delUsers ;;
	"ARL") acceptRemoteLogin ;;
	"DRL") deniedRemoteLogin ;;
	"HELP") help ;;
	"Quit") quit ;;
	    *) help
    esac 
done













