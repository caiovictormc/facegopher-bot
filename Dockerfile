FROM golang

RUN mkdir -p /go/src/facegopher-bot
WORKDIR /go/src/facegopher-bot

COPY . /go/src/facegopher-bot

RUN go get github.com/codegangsta/gin
RUN go-wrapper download
RUN go-wrapper install

ENV PORT 8080
EXPOSE 3000

CMD gin run
