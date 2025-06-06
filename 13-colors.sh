#!/bin/bash

R='\e[31m'
G='\e[32m'
Y='\e[33m'

RESET='\e[0m'


get_user_id(){
    id -u
}

is_root_user(){
    [ "$(get_user_id)" -eq 0 ]
}

is_package_installed(){
    dnf list installed "$1" &> /dev/null
}

install_package(){
    dnf install "$1" -y &> -p /var/logs/
}

log_success(){
    echo -e "Installing "$1" is...... $G Success $RESET"
}

log_failure(){
    echo "Installing "$1" is...... "$R" Failure "$RESET""
}

main(){

    if is_root_user;
    then
        echo "Running as Root"
        echo "Installing $1"

        if is_package_installed "$1"; 
        then
            echo -e "$R $1 already installed $RESET"
        else
            install_package "$1" && log_success || log_failure
        fi
    else
        echo "User ID : $(get_user_id)"
        echo "Not running as a root user"
        log_failure;
        exit 1
    fi

}

main "$1"