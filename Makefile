.PHONY: test clean build

build: bin/sftp-proxy

test:
	go vet ./...
	go test ./...

vtest:
	go vet -v ./...
	go test -v -cover ./...

clean:
	go clean ./...

cover:
	go test -coverprofile c.out ./...
	go tool cover -html=c.out

bin/sftp-proxy: *.go
	go get ./...
	go build -o bin/sftp-proxy ./
