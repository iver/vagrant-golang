#!/usr/bin/env bash

sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile
apt-get update
apt-get upgrade -y
apt-get install nginx mercurial mercurial-git  postgresql-9.4-postgis-2.1 postgresql-contrib-9.4 -y

