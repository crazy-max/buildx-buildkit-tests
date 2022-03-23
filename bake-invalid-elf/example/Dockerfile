FROM --platform=$BUILDPLATFORM golang:1.17-alpine AS go
FROM --platform=$BUILDPLATFORM tonistiigi/xx:1.1.0 AS xx

FROM go AS base
COPY --from=xx / /
RUN apk add --no-cache file git
RUN env|sort
WORKDIR /src

FROM base AS vendored
RUN --mount=type=bind,target=.,rw \
  --mount=type=cache,target=/go/pkg/mod \
  go mod tidy && go mod download

FROM vendored AS build
ARG TARGETPLATFORM
RUN --mount=type=bind,source=.,rw \
  --mount=type=cache,target=/root/.cache \
  --mount=type=cache,target=/go/pkg/mod \
  set -x; xx-go build -o /usr/bin/test .
