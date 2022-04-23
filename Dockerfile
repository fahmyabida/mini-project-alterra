FROM golang:alpine

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN apk add git

RUN go build -o mini .

CMD ["./mini"]