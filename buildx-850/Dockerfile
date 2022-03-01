FROM busybox
COPY web /web
RUN ls -al /web
RUN [ -z "$(ls -A /web)" ] && echo "/web is empty" && exit 1 || echo "OK"
