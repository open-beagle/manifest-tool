#!/bin/sh

set -ex

export GO111MODULE=auto

export GOARCH=amd64
make static
mv manifest-tool manifest-tool-linux-$GOARCH

export GOARCH=arm64
make static
mv manifest-tool manifest-tool-linux-$GOARCH

export GOARCH=ppc64le
make static
mv manifest-tool manifest-tool-linux-$GOARCH

export GOARCH=mips64le
make static
mv manifest-tool manifest-tool-linux-$GOARCH

export GOARCH=loong64
make static
mv manifest-tool manifest-tool-linux-$GOARCH
