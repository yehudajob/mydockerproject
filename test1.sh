#!/bin/bash

alpcon1=`docker ps -af "status=running" -f "name=\bAlpCon\b" -q`
tester=docker ps -af "status=running" -f "name=\bAlpCon\b"
if !(tester -eq ""); then

	echo "AlpCon is running"
	
	else
		echo "AlpCon is stopped. I'm starting it..."
	docker start $alpcon1

	


fi

