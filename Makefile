run:
	docker build -t hollywood .
	docker run -d -t -i --name hollywood hollywood
	docker exec -it hollywood apt-get -y update
	docker exec -it hollywood apt-get -y install hollywood
	docker exec -it hollywood /bin/bash

clean:
	docker stop hollywood
	docker rm hollywood
	docker image rm hollywood
