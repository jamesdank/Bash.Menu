#!/bin/bash

##############################################################################
# Colors #####################################################################
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
red='\033[0;31m'
nc='\033[0m'
##############################################################################

function color_green () {
    echo -ne $green$1$clear
}
function color_blue () {
    echo -ne $blue$1$clear
}

function menu () {

    echo -ne "
    Menu
    $(color_green '1)') Example 1
    $(color_green '2)') Example 2
    $(color_green '3)') Example 3
    $(color_green '0)') Exit
    $(color_blue 'Choose an option:') "

    read A
            
        case $A in

        1) 
        command 1 ;
        command 2 ;
        last command ;;

        2) 
        command 1 ;
        command 2 ;
        last command ;;

        3)
        command 1 ;
        command 2 ;
        last command ;;

        0) 
        exit 0 ;;
        
        *) 
        echo -e "${red}Wrong option${nc}" ;;
        esac
}

menu
