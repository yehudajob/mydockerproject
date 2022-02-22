#!/bin/bash

#alpcon1=`docker ps -af "status=running" -f "name=\bAlpCon\b" -q`
alpcon1=`docker ps -a -f "name=\bAlpCon\b" -q`
tester=`docker ps  -af "status=running" -f "name=\bAlpCon\b" -q`
if [ -z "$tester" ]
then
  
	echo -e "AlpCon is stopped.\nI'm starting it..."
        	docker start $alpcon1
	        echo "AlpCon is up successfully."


	else
		echo -e "\nAlpCon is running."        

fi  

               echo -e "\nhere are all the active containers.\n"
	       docker ps
	       echo -e "\n"


                                                              
                 
