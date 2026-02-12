.PHONY: build
build:
	go build .

.PHONY: image
image: build
	docker build -t ghcr.io/akash-network/chain-supply .
