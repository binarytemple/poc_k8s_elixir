
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
		CMD = "sudo docker"
endif
ifeq ($(UNAME_S),Darwin)
		CMD = "docker"
endif

build:
	$(CMD) build -t bryanhuntesl/phoenix_kubernetes .

push: build
	$(CMD) push bryanhuntesl/phoenix_kubernetes

run:
	$(CMD) run -p 4000:4000 bryanhuntesl/phoenix_kubernetes
