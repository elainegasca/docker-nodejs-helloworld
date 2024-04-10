NAME ?= node-hello

install:
	npm install

build:
	docker build --platform=linux/amd64 -t $(NAME) .

bash: build
	docker run -it --rm --entrypoint /bin/bash $(NAME)

run: build
	docker run -i -t -p 8080:8080 -d $(NAME)

test:
	curl localhost:43567

clean:
	rm -rf node_modules


.PHONY: install build run test clean
