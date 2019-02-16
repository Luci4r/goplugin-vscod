#!/bin/sh
echo "=========Start clear========="
rm -rf pkg bin src
echo "=========Start get golant tools dependent source code========="
git clone https://github.com/golang/tools
git clone https://github.com/golang/lint
#env GOPATH=`pwd` go get -u -v github.com/golang/tools
#env GOPATH=`pwd` go get -u -v github.com/golang/lint
echo "mv src/github.com/golang/tools/ src/golang.org/x/tools"
mkdir -p src/golang.org/x/
mv ./tools/ src/golang.org/x/tools
mv ./lint src/golang.org/x/lint
#env GOPATH=`pwd` go build golang.org/lint

echo "=========Start get and build golang tools========="
env GOPATH=`pwd` go get -v github.com/zmb3/gogetdoc
env GOPATH=`pwd` go get -v github.com/golang/lint/golint
env GOPATH=`pwd` go get -v github.com/tpng/gopkgs
env GOPATH=`pwd` go get -v github.com/derekparker/delve/cmd/dlv
env GOPATH=`pwd` go get -v github.com/nsf/gocode
env GOPATH=`pwd` go get -v github.com/rogpeppe/godef
env GOPATH=`pwd` go get -v github.com/ramya-rao-a/go-outline
env GOPATH=`pwd` go get -v sourcegraph.com/sqs/goreturns
env GOPATH=`pwd` go get -v golang.org/x/tools/cmd/gorename
env GOPATH=`pwd` go get -v github.com/uudashr/gopkgs/cmd/gopkgs
env GOPATH=`pwd` go get -v github.com/acroca/go-symbols
env GOPATH=`pwd` go get -v golang.org/x/tools/cmd/guru
env GOPATH=`pwd` go get -v github.com/cweill/gotests/...
env GOPATH=`pwd` go get -v golang.org/x/tools/cmd/godoc
env GOPATH=`pwd` go get -v github.com/fatih/gomodifytags
env GOPATH=`pwd` go get -v github.com/josharian/impl
env GOPATH=`pwd` go get -v golang.org/x/lint/golint
env GOPATH=`pwd` go get -v golang.org/x/tools/cmd/goimports
