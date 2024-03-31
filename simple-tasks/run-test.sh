#!/bin/sh
chmod 777 $0
set -e

# task script is in resource-tutorial/job-inputs/ folder
# application input is in gopath/src/github.com/cloudfoundry-community/simple-go-web-app folder
# $GOPATH is gopath/ folder
export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/cloudfoundry-community/simple-go-web-app/Godeps/_workspace
cd gopath/src/github.com/cloudfoundry-community/simple-go-web-app/

go test ./...