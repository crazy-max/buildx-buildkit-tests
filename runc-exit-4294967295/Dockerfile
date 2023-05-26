# syntax=docker/dockerfile:1
FROM busybox
ARG HELLO
RUN echo $HELLO
ARG FOO
RUN if [ "$FOO" = "bar" ]; then exit 1; fi
