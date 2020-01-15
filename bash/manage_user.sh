#!/bin/bash

user_list=(`cat users.txt`)

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
		echo "Add user: ${user} [OK]"
		sudo useradd ${user} -s /sbin/nologin -g "users"
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
	    echo "Remove user ${user} [OK]"
	    sudo userdel ${user}
	done
fi


}

function acceptRemoteLogin() {
    echo "accRemLog.."

    for user in "${user_list[@]}"
    do
	echo "Accept remote login for ${user} [OK]"
	sudo usermod -s /bin/bash ${user}
done

}

function deniedRemoteLogin() {
    echo "denRemLog..."

    for user in "${user_list[@]}"
    do
	echo "Denied remote Login for ${user} [OK]"
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














