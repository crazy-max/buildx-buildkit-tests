FROM alpine
ENV FOO=bar
ADD https://raw.githubusercontent.com/moby/moby/master/README.md /
RUN echo first > /out
