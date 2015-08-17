#!/usr/bin/env bash

sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile
apt-get update
apt-get upgrade -y
apt-get install git mercurial mercurial-git -y

