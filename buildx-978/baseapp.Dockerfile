FROM alpine:3.15
ARG TARGETPLATFORM
WORKDIR /src
RUN echo $TARGETPLATFORM > platform
