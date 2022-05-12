# gRPC Example - Hello World

## About

This is an example project for gRPC with Protocol Buffers in Go, used by the official [Quick start tutorial](https://grpc.io/docs/languages/go/quickstart/).

The code has been modified to work in our repository (changed imports) and some names has changed to make it more consistent. Also, a Makefile has been created to automate the build.

The basic example is a gRPC server with a Greeter service defined using protocol buffers and a gRPC client that sends the requests to make the Greeter RPC (unary) on the server.

## Prerequisites

Install the protocol buffer compiler in your system following the [Protocol Buffer Compiler Installation Guide](https://grpc.io/docs/protoc-installation/).

Install the protocol buffer compiler plugins for Go:

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

## Build

To build the project use the `Makefile` that will compile the `.proto` file to a Go source file, and the server and client applications:

```bash
make
```

## Usage

Run the server:

```bash
./server
```

3.  Run the client (on a different terminal):

```bash
./client
```

## Links

- [gRPC - Quick Start](https://grpc.io/docs/languages/go/quickstart)
- [gRPC Examples](https://github.com/grpc/grpc-go/tree/master/examples)
