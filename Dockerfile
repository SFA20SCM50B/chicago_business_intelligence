# syntax=docker/dockerfile:1
FROM golang:1.17-alpine
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod tidy
EXPOSE 8080
COPY . ./
RUN go build -o /main
CMD [ "/main" ]
