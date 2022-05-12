.PHONY: all build clean

all: build

pb/helloworld.pg.go pb/helloworld_grpc.pg.go: pb/helloworld.proto
	protoc --go_opt=paths=source_relative --go_out=. \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		pb/helloworld.proto

client: greeter_client/main.go pb/helloworld.pg.go pb/helloworld_grpc.pg.go
	go build -o client ./greeter_client/main.go

server: greeter_server/main.go pb/helloworld.pg.go pb/helloworld_grpc.pg.go
	go build -o server ./greeter_server/main.go

build: client server

clean:
	rm -f client server