#!/bin/bash


alpcon1=`docker ps -a -f "name=\bAlpCon\b" -q`
tester=`docker ps  -af "status=running" -f "name=\bAlpCon\b" -q`

if [ -z "$tester" ]
then
  
		docker volume create my_volume
    docker build -t=alpcon -f Dockerfile .
    #		docker run -itd -v $pwd:/var/lib/docker/volumes/my_volume/_data --name AlpCon alpcon
#		docker run -it --rm --name AlpCon alpcon -v $pwd:/var/lib/docker/volumes/my_volume/_data -w my_volume
    docker run -itd --name AlpCon -v /var/lib/docker/volumes/my_volume:/home/docker_project/ -w /home/docker_project/Dockerfiles/Dockerfiles alpcon:latest

 	               docker exec -it AlpCon git clone https://github.com/yehudajob/Dockerfiles.git
		             docker exec -it AlpCon python3 example.py
		                                      
			echo "Sleeping 10s"
			sleep 10
				elif docker ps  -af "status=running" -f "name=\bAlpCon\b"; then
                                	docker stop $alpcon1
					echo "faild test... "
          echo "stopping AlpCon container "
					docker stop AlpCon 
				else
				 	echo "All good!"
					docker rm -f AlpCon 
   

fi  
