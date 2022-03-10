FROM alpine
ENV FOO=bar
ADD https://raw.githubusercontent.com/moby/moby/master/README.md /
RUN --mount=target=/busybox,from=busybox:1.35.0 cat /etc/passwd
RUN echo first > /out
