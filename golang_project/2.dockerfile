FROM golang:1.16-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o /app/build/fizzbuzz


FROM scratch
COPY --from=builder /app/build/fizzbuzz /
ENTRYPOINT ["/fizzbuzz"]