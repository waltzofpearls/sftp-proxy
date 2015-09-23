.PHONY: test clean build

build: sftp-proxy

run: build
	./sftp-proxy

test:
	go vet ./...
	go test ./...

clean:
	go clean ./...

sftp-proxy: *.go
	go build

