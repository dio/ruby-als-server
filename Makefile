NAME := als
VERSION := 1.0

docker:
	docker build -t $(NAME):$(VERSION)
	docker run --rm -it $(NAME):$(VERSION)
