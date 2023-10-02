FROM golang:1.15-alpine
LABEL maintainer="andrianta.321@gmail.com"

WORKDIR /go/src/github.com/dicodingacademy/karsajobs
ENV GO111MODULE=on
ENV APP_PORT=8080
ENV MONGO_HOST=mongo
ENV MONGO_USER="root"
ENV MONGO_PASS="toor"

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN mkdir /build; \
    go build -o /build/ ./...

EXPOSE 8080
CMD ["/build/web"]
