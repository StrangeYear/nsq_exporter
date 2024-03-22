FROM golang:1.22.1-alpine as builder
WORKDIR /go
ADD go.mod go.sum /go/
RUN go mod download
ADD . /go
RUN GOOS=linux GOARCH=amd64 go build -o /go/nsq_exporter

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /go/nsq_exporter /nsq_exporter
EXPOSE 9117
ENTRYPOINT ["/nsq_exporter"]