!/usr/bin/ bash
git clone https://github.com/yehudajob/Dockerfiles.git


#docker exec -d --workdir /tmp alpcon:latest test.py > /dev/null 

docker run -d --workdir /tmp -v $PWD:/tmp --name AlpCon alpcon:latest test.py > /dev/null


echo "Sleeping 10s"
sleep 10
if docker ps -f status=running --format "{{.Names}}" | grep -q AlpCon; then
  echo "Error, Docker still running stoping it "
  docker rm -f AlpCon > /dev/null
else
  echo "All good!"
  docker rm -f AlpCon > /dev/null
fi

