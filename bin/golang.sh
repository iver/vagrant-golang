#!/usr/bin/env bash

export GOPACK=go1.6.linux-amd64.tar.gz
mkdir -p /home/vagrant/golang
wget -nv --progress=dot:giga -O /home/vagrant/golang/${GOPACK} https://storage.googleapis.com/golang/${GOPACK}
tar zxf /home/vagrant/golang/${GOPACK} -C /usr/local/

source ~/.bash_profile

/usr/local/go/bin/go get -u -v github.com/nsf/gocode
/usr/local/go/bin/go get -u -v github.com/rogpeppe/godef
/usr/local/go/bin/go get -u -v github.com/golang/lint/golint
/usr/local/go/bin/go get -u -v github.com/lukehoban/go-find-references
/usr/local/go/bin/go get -u -v sourcegraph.com/sqs/goreturns
/usr/local/go/bin/go get -u -v golang.org/x/tools/cmd/gorename
/usr/local/go/bin/go get -u -v github.com/derekparker/delve/cmd/dlv

mkdir -p /usr/local/go
chown -R vagrant:vagrant /usr/local/go
mkdir -p /home/vagrant/go
mkdir -p /home/vagrant/go/pkg
mkdir -p /home/vagrant/go/bin
mkdir -p /home/vagrant/go/src
