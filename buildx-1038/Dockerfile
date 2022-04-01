FROM library/tomcat:9.0.60-jre11

ENV  S6OVERLAY_VER=3.1.0.1

# Apply the s6-overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6OVERLAY_VER}/s6-overlay-noarch.tar.xz /tmp/
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6OVERLAY_VER}/s6-overlay-x86_64.tar.xz /tmp/
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6OVERLAY_VER}/s6-overlay-aarch64.tar.xz /tmp/
RUN if [ "$(arch)" = "x86_64" ] ; then tar -C / -Jxpf /tmp/s6-overlay-x86_64.tar.xz; else tar -C / -Jxpf /tmp/s6-overlay-aarch64.tar.xz; fi
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6OVERLAY_VER}/s6-overlay-symlinks-noarch.tar.xz /tmp/
RUN tar -C / -Jxpf /tmp/s6-overlay-symlinks-noarch.tar.xz
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6OVERLAY_VER}/syslogd-overlay-noarch.tar.xz /tmp/
RUN tar -C / -Jxpf /tmp/syslogd-overlay-noarch.tar.xz
RUN rm /tmp/*.tar.xz
