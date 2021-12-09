FROM golang:1.13 as builder
ENV CGO_ENABLED=0
WORKDIR /app
COPY . /app/
RUN go build -o go-app

FROM scratch
COPY --from=builder /app/go-app /
ENTRYPOINT ["/go-app"]
