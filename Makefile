.PHONY: all build run

all: build run

build:
	docker build -t my-react-app .

run:
	docker run -p 3000:3000 my-react-app