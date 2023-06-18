FROM golang:1.14-alpine
MAINTAINER test

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]
