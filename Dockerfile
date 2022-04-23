FROM golang:alpine

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN add apk git

RUN go build -o mini .

CMD ["./mini"]