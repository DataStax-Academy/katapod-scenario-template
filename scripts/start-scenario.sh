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
    if [ -f "$tmp_directory/cqlsh-astra.tar.gz" ]; then
		echo "$(tput setaf 2)[OK]$(tput setaf 7) - cqlsh for Astra is there"
	else
		curl --fail --location --progress-bar "$cqlsh_for_astra_url" > "$tmp_directory/cqlsh-astra.tar.gz"
		tar xvzf $tmp_directory/cqlsh-astra.tar.gz 
		echo "$(tput setaf 2)[OK]$(tput setaf 7) - File downloaded"  
	fi
    astra db list
    exit 0
}

function start_cqlsh_local() {
    echo "Local "
    exit 0
}

function menu() {
    echo "$(tput setaf 3)You can run this scenario using different Apache Cassandra™ $(tput setaf 7)"
    echo ""
    echo "$(tput setaf 2)(1)$(tput setaf 7) - Astra DB (Free Cloud service)"
	echo "$(tput setaf 2)(2)$(tput setaf 7) - Local Cassandra (Docker)"
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

#curl -OL https://downloads.datastax.com/dsbulk/dsbulk-1.8.0.tar.gz \
#          && tar xvzf dsbulk-1.8.0.tar.gz \
#          && rm -f dsbulk-1.8.0.tar.gz