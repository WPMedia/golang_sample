FROM golang:1.6
RUN git clone https://github.com/Mcronk/golang_sample.git
RUN go get github.com/gorilla/mux
RUN apt-get update && apt-get upgrade
EXPOSE 8000
WORKDIR /go/golang_sample/gApp
RUN go build gorilla_server.go
CMD ["./gorilla_server"]