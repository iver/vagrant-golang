#!/usr/bin/env bash
export GOPACK=go1.5.1.linux-amd64.tar.gz

sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile
apt-get update
apt-get upgrade -y
apt-get install git mercurial mercurial-git -y

mkdir -p /home/vagrant/golang
wget -O /home/vagrant/golang/${GOPACK} https://storage.googleapis.com/golang/${GOPACK}
mkdir -p /usr/local/go
tar zxf /home/vagrant/golang/${GOPACK} -C /usr/local/go/
