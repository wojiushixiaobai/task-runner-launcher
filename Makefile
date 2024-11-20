.PHONY: audit build lint lintfix run

check: lint
	go fmt ./...
	go vet ./...

build:
	go build -o bin cmd/launcher/main.go

lint:
	golangci-lint run

lintfix:
	golangci-lint run --fix

run: build
	./bin/main javascript