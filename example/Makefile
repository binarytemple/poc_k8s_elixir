.PHONY: build push run

HUB_PREFIX ?= "bryanhuntesl"

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
		CMD = sudo docker
endif
ifeq ($(UNAME_S),Darwin)
		CMD = docker
endif

build:
	$(CMD) build -t $(HUB_PREFIX)/phoenix_kubernetes .

push: build
	$(CMD) push $(HUB_PREFIX)/phoenix_kubernetes

run:
	$(CMD) run -p 4000:4000 $(HUB_PREFIX)/phoenix_kubernetes
