# syntax=docker/dockerfile:1
FROM golang:1.17-alpine
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod tidy
COPY . ./
EXPOSE 8080
RUN go build -o /main
CMD [ "/main" ]
