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

release:
	$(DOCKER_BUILD) -t jonasal/network-tools --pull --no-cache .

push:
	docker push jonasal/network-tools
