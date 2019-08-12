NAME ?= als
VERSION ?= 1.0
PORT ?= 3000

docker:
	docker build -t $(NAME):$(VERSION) .
	docker run --rm -it -p $(PORT):3000 $(NAME):$(VERSION)
