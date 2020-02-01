FROM golang:latest
WORKDIR /app
EXPOSE 80/tcp
COPY ./ /app
RUN go mod download
RUN go get github.com/githubnemo/CompileDaemon
ENTRYPOINT CompileDaemon --build="go build commands/runserver.go" --command="go run commands/runserver.go"
# ENTRYPOINT go run commands/runserver.go
