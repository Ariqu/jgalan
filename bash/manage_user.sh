#!/bin/bash

user_list=(`cat users.txt`)

RED='e[31m'
NC='\033[0m'
GREEN='\033[0m'


function checkStatusCode() {
    if [ $? == 0 ]; then
	status="${GREEN}PASS${NC}"
    else
	status="FAIL"
    fi

}

function showUsers() {

    echo "showUsers ..."

    echo "Lista: "

    #ladowanie danych z plikow

    for(( i=0; i<=${#user_list[@]}; i++ )) 
    do
	echo "${user_list[i]}"    
    done 

}


function addUsers() {

    echo -n "Are you sure? [y/n]"
    read sure
    if [ "${sure}" = "y" ]; then

        for user  in "${user_list[@]}"
	do
	    sudo useradd ${user} -m -s /sbin/noLogin -g "users" 2> /dev/null
	
	    checkStatusCode	    

	    echo "Add user: ${user} [${status}]"

        done    




    fi
}

function delUsers() {
    
echo "delUsers..."

    echo -n "Are you sure? [y/n]"
    read sure
    if [ ${sure} == "y" ];then
	for user in "${user_list[@]}"
	do

	    sudo userdel -r ${user} 2> /dev/null
	
	    checkStatusCode

	    echo "Remove user ${user} [${status}]"
    done
fi


}

function acceptRemoteLogin() {
    echo "accRemLog.."

    for user in "${user_list[@]}"
    do

	sudo usermod -s /bin/bash ${user} 2> /dev/null
	checkStatusCode
	echo "Accept remote login for ${user} [ok] "
    done

}

function deniedRemoteLogin() {
    echo "denRemLog..."

    for user in "${user_list[@]}"
    do
	echo "Denied remote Login for ${user} [OK]"
	chechStatusCode
    sudo usermod -s /sbin/noLogin ${user}
done

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



select option in SU AU DU ARL DRL HELP Quit 
do
    case ${option} in
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
















