# If we have `--squash` support, then use it!
ifneq ($(shell docker build --help 2>/dev/null | grep squash),)
DOCKER_BUILD = docker build --squash
else
DOCKER_BUILD = docker build
endif

all: build

build: Makefile Dockerfile
	$(DOCKER_BUILD) -t jonasal/network-tools .
	@echo "Done!  Use docker run jonasal/network-tools to run"

# These commands are primarily used for development, see link for more info:
# https://github.com/JonasAlfredsson/docker-nginx-certbot/issues/28
dev:
	docker buildx build --platform linux/amd64,linux/386,linux/arm64,linux/arm/v7,linux/mips64le,linux/s390x,linux/ppc64le --tag jonasal/network-tools:dev .

push:
	docker buildx build --platform linux/amd64,linux/386,linux/arm64,linux/arm/v7 --tag jonasal/network-tools:latest --pull --no-cache --push .
