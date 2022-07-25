#!/bin/bash

cqlsh_for_astra_url="https://downloads.datastax.com/enterprise/cqlsh-astra.tar.gz"
tmp_directory=/tmp

clear

echo " ██████╗  █████╗ ████████╗ █████╗ ███████╗████████╗ █████╗ ██╗  ██╗ "
echo " ██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔════╝╚══██╔══╝██╔══██╗╚██╗██╔╝ "
echo " ██║  ██║███████║   ██║   ███████║███████╗   ██║   ███████║ ╚███╔╝  "
echo " ██║  ██║██╔══██║   ██║   ██╔══██║╚════██║   ██║   ██╔══██║ ██╔██╗  "
echo " ██████╔╝██║  ██║   ██║   ██║  ██║███████║   ██║   ██║  ██║██╔╝ ██╗ "
echo " ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ "
                                                                  
echo ""

function start_cqlsh_astra() {
    echo "You selected $(tput setaf 3)ASTRA$(tput setaf 7)"
	astra setup
    astra db list
    exit 0
}

function start_cqlsh_local() {
    echo "Local "
	echo "Cassandra will start locally a to start..."
    docker run -p 9042:9042 -d cassandra:4
    echo -n 'Waiting for Cassandra to start...'; timeout 60 bash -c 'until cqlsh -e "describe cluster" >/dev/null 2>&1; do sleep 2; echo -n "."; done'; echo ' Ready!'
    echo "Ready, let's roll!"
    exit 0
}

function menu() {
    echo "$(tput setaf 3)You can run this scenario using different Apache Cassandra™ $(tput setaf 7)"
    echo ""
    echo "$(tput setaf 2)(1)$(tput setaf 7) - Use free Cloud service Astra DB"
	echo "$(tput setaf 2)(2)$(tput setaf 7) - Start Cassandra Locally with Docker"
	echo ""
	echo "$(tput setaf 3)Choose an option (1 or 2) :$(tput setaf 7)"
        read a
        case $a in
	        1) start_cqlsh_astra ; menu ;;
	        2) start_cqlsh_local ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

menu
