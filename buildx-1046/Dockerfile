ARG GOREPLACE_VERSION="1.1.2"

FROM --platform=$BUILDPLATFORM alpine:latest AS base

FROM base AS goreplace
ARG TARGETPLATFORM
ARG GOREPLACE_VERSION
WORKDIR /opt
RUN GOREPLACE_ARCH=$(case ${TARGETPLATFORM:-linux/amd64} in \
    "linux/386")     echo "32-linux"    ;; \
    "linux/amd64")   echo "64-linux"    ;; \
    "linux/arm/v7")  echo "arm-linux"   ;; \
    "linux/arm64")   echo "arm64-linux" ;; \
    *)               echo ""            ;; esac) \
  && echo "GOREPLACE_ARCH=$GOREPLACE_ARCH" \
  && wget -q "https://github.com/webdevops/go-replace/releases/download/${GOREPLACE_VERSION}/gr-${GOREPLACE_ARCH}" -qO "/opt/go-replace" \
  && chmod +x /opt/go-replace

FROM alpine:latest
COPY --from=goreplace /opt/go-replace /usr/local/bin/go-replace
RUN go-replace --version
