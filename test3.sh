#!/bin/bash

#alpcon1=`docker ps -af "status=running" -f "name=\bAlpCon\b" -q`
alpcon1=`docker ps -a -f "name=\bAlpCon\b" -q`
tester=`docker ps  -af "status=running" -f "name=\bAlpCon\b" -q`
docker volume create my_volume
if [ -z "$tester" ]
then
  
#	echo -e "AlpCon is stopped.\nI'm starting it..."
		docker build -t=alpcon -f Dockerfile .
#		docker run -d --workdir /tmp -v /var/lib/docker/volumes/dockervol --name AlpCon alpcon example.py
		docker run -itd -v $pwd:/var/lib/docker/volumes/yehuda/_data --name AlpCon alpcon:latest
 	               git clone https://github.com/yehudajob/Dockerfiles.git
			echo "Sleeping 10s"
			sleep 10
				elif docker ps -f status=running --format "{{.Names}}" | grep -q AlpCon; then
                                	docker stop $alpcon1
					echo "faild test... "
					docker rm -f AlpCon 
				else
				 	echo "All good!"
#				  	docker stop $alpcon1
					docker rm -f AlpCon 
	
        

fi  

    

                                                              
                 
