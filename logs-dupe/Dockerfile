# syntax=docker/dockerfile:1-labs

ARG GO_VERSION="1.17.7"

FROM ubuntu:20.04 AS golang
RUN export DEBIAN_FRONTEND="noninteractive" && apt-get update && apt-get install --no-install-recommends -y curl jq
WORKDIR /golang
RUN curl -m30 --retry 5 --retry-connrefused --retry-delay 5 -sSL "https://go.dev/dl/?mode=json&include=all" -o "godist.json"
ARG GO_VERSION
ARG TARGETOS
ARG TARGETARCH
ENV PATH="/usr/local/go/bin:$PATH"
RUN <<EOT
GO_DIST_FILE=go${GO_VERSION%.0}.${TARGETOS}-${TARGETARCH}.tar.gz
GO_DIST_URL=https://golang.org/dl/${GO_DIST_FILE}
SHA256=$(cat godist.json | jq -r ".[] | select(.version==\"go${GO_VERSION%.0}\") | .files[] | select(.filename==\"$GO_DIST_FILE\").sha256")
curl -sSL "$GO_DIST_URL.asc" -o "go.tgz.asc"
curl -sSL "$GO_DIST_URL" -o "go.tgz"
echo "$SHA256 *go.tgz" | sha256sum -c -
tar -C /usr/local -xzf go.tgz
go version
EOT

FROM ubuntu:20.04
COPY --from=golang /usr/local/go /usr/local/go

ENV GOROOT="/usr/local/go"
ENV GOPATH="/go"
ARG GO_VERSION
ENV GO_VERSION=${GO_VERSION}

ENV PATH="$GOPATH/bin:/usr/local/go/bin:/osxcross/bin:$PATH"
ENV LD_LIBRARY_PATH="/osxcross/lib:$LD_LIBRARY_PATH"
