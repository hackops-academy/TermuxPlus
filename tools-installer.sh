#!/bin/bash
echo -e "\n\e[1;96m[+] TermuxPlus Tool Installer Menu\e[0m"
PS3="Select a tool to install: "
options=("Nmap" "Sqlmap" "Hydra" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Nmap")
            pkg install -y nmap
            ;;
        "Sqlmap")
            git clone https://github.com/sqlmapproject/sqlmap
            ;;
        "Hydra")
            pkg install -y hydra
            ;;
        "Exit")
            break
            ;;
        *) echo "Invalid option" ;;
    esac
done
