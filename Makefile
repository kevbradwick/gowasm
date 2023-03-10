.PHONY: fmt
fmt:
	go fmt ./...

.PHONY: wasm
wasm:
	cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" public/
	GOOS=js GOARCH=wasm go build -o public/hello.wasm cmd/hello/main.go
