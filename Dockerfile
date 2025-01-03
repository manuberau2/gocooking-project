FROM golang:1.22.5

WORKDIR /app

COPY go.mod go.sum . 

RUN go mod download

COPY Backend ./Backend

WORKDIR /app/Backend

RUN go build -o main .


CMD ["./main"]
