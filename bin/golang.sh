#!/bin/bash
set -o errexit
set -o nounset

export GOPACK=go1.9.linux-amd64.tar.gz
export TARGET_PACK=${HOME/golang}
export TARGET_GO=/usr/local/go
export ORIGIN=https://storage.googleapis.com/golang/${GOPACK}

echo "Creating golang home ... ${TARGET_PACK}";
mkdir -p ${TARGET_PACK}


echo "Downloading golang pack from ${ORIGIN}";
[ -f ${TARGET_PACK}/${GOPACK} ] || wget -nv --progress=dot:giga -O ${TARGET_PACK}/${GOPACK} ${ORIGIN}

echo "Install golang binaries ... target: /usr/local";
sudo tar zxf ${TARGET_PACK}/${GOPACK} -C /usr/local/
sudo chown -R ${USER} ${TARGET_GO};

source ~/.bash_profile

exit 0;

# ${TARGET_GO}/bin/go get -u -v github.com/nsf/gocode
# OR mdempsky/gocode for better performance
${TARGET_GO}/bin/go get -u -v github.com/mdempsky/gocode
${TARGET_GO}/bin/go get -u -v github.com/rogpeppe/godef
${TARGET_GO}/bin/go get -u -v github.com/golang/lint/golint
${TARGET_GO}/bin/go get -u -v github.com/lukehoban/go-find-references
${TARGET_GO}/bin/go get -u -v sourcegraph.com/sqs/goreturns
${TARGET_GO}/bin/go get -u -v github.com/derekparker/delve/cmd/dlv
${TARGET_GO}/bin/go get -u -v golang.org/x/tools/cmd/gorename
${TARGET_GO}/bin/go get -u -v golang.org/x/tools/cmd/guru
${TARGET_GO}/bin/go get -u -v golang.org/x/tools/cmd/goimports
${TARGET_GO}/bin/go get -u -v golang.org/x/tools/cmd/godoc

${TARGET_GO}/bin/go get -u -v github.com/TrueFurby/go-callvis

chown -R ${USER}:${USER} /usr/local/go
mkdir -p ${HOME}/go
mkdir -p ${HOME}/go/pkg
mkdir -p ${HOME}/go/bin
mkdir -p ${HOME}/go/src
