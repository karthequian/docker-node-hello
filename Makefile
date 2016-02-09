install:
	npm install

build:
	docker build -t karthequian/centos-node-hello .

run:
	node index.js

run-container:
	docker run -p 49160:8080 -d karthequian/centos-node-hello 

test:
	curl localhost

clean:
	rm -rf node_modules


.PHONY: install build run test clean
