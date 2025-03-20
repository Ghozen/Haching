#!/bin/bash

#Informations Footprinting


echo "Svp entrez le nom de domain ou l'adresse ip"
read domain;

ps3="Quel outil souhaitez-vous utilisé"

options=("whois"
         "nslookup"
	 "dig"
	 "theHarvester"
	 "traceroute"
	 "host")

##############main

select      choix in "${options[@]}";

do 
	case $REPLY in

		1) 
			echo "information avec whois:"
                          whois $domain > whois.txt
			   ls -l
			   cat whois.txt
			   ;;

	        2) 
			echo "information avec nslookup"
			  nslookup $domain > nslookup.txt
			  ls -l
			  cat nslookup.txt
                           ;;

                3) 
			echo "information avec dig"
			  dig MX $domain > digmx.txt
			  ls -l
			  cat digmx
			   ;;

	       4) 
			echo "information avec theHarvester"
			 theHarvester -d $domain -b yahoo > harvester.txt
			 ls -l
			 cat harvester.txt
			  ;;
		5) 
			echo "information avec host"
			 host $domain > host.txt
			 ls -l
			 cat host.txt
			  ;;
	        6) 
			echo "information avec Traceroute"
                          traceroute $domain > trace.txt
			  ls -l
			  cat trace.txt
                           ;;

	        7) 
			echo "Exit"
			  break
			  ;;
	        *)
			echo "Option invalide, veullez réessayer"
                           ;;
       esac
done
 
	
