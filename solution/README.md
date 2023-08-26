docker container run -itd --name csvserver infracloudio/csvserver

vim ./gencsv.sh 2 8

cat inputFile

docker container run -itd -v /home/rohit/git/csvserver/solution/inputFile:/csvserver/inputdata --name csvserver infracloudio/csvserver

docker exec -it csvserver /bin/bash

docker rm -f csvserver

docker container run -itd -p 9393:9300 -e 'CSVSERVER_BORDER=Orange' -v $(pwd)/inputFile:/csvserver/inputdata --name csvserver infracloudio/csvserver
