all: build

build: Makefile Dockerfile
	docker build -t jonasal/network-tools:local .

run:
	docker run -it --rm jonasal/network-tools:local

# These commands are primarily used for development, see link for more info:
# https://github.com/JonasAlfredsson/docker-nginx-certbot/issues/28
dev:
	docker buildx build --platform linux/amd64,linux/386,linux/arm64,linux/arm/v7,linux/mips64le,linux/s390x,linux/ppc64le --tag jonasal/network-tools:dev .

push:
	docker buildx build --platform linux/amd64,linux/386,linux/arm64,linux/arm/v7 --tag jonasal/network-tools:latest --pull --no-cache --push .
