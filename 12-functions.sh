#!/bin/bash

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
    dnf install "$1" -y
}

log_success(){
    echo "Installing "$1" is......Success"
}

log_failure(){
    echo "Installing "$1" is......Failure"
}

main(){
    if is_root_user;
    then
        if is_package_installed; 
        then
            echo ""$1" already installed"
        else
            install_package && log_success || log_failure
        fi
    else
        echo "User ID : $(get_user_id)"
        echo "Not running as a root user"
        log_failure;
        exit 1
    fi

}