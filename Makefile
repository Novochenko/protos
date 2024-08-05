.PHONY: generate
all: generate
generate:
	protoc -I proto proto/sso/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative
.DEAFAULT_GOAL := generate
