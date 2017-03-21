all: build

build:
	docker build . -t uoamhub

run:
	docker run uoamhub -p 2000:2000

.PHONY: all build
