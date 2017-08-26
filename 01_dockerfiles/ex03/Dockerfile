FROM debian
RUN apt-get update &&  apt-get install git wget gcc -y
WORKDIR $HOME/local
RUN wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz && tar -xzvf go1.9.linux-amd64.tar.gz
ENV GOROOT=$HOME/local/go
ENV GOPATH=$HOME/gogs
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin
WORKDIR $GOPATH/src/github.com/gogits
RUN git clone --depth=1 -b develop https://github.com/gogits/gogs
RUN go get -u -tags "sqlite" github.com/gogits/gogs
WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go build -tags "sqlite"
EXPOSE 3000
ENV USER=git
ENTRYPOINT ./gogs web
