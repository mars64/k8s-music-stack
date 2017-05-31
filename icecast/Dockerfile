FROM alpine:3.6
MAINTAINER @mars64 https://github.com/mars64
# Based on @VITIMan https://github.com/VITIMan 

ENV ICECAST_VERSION 2.4.3-r4

ARG user=icecast
ARG group=icecast
# ARG uid=1000
# ARG gid=1000

RUN apk -q update \
    && apk -q --no-progress add icecast="$ICECAST_VERSION" \
    && rm -rf /var/cache/apk/*

COPY silence.ogg /usr/share/icecast/silence.ogg
COPY icecast.xml /usr/share/icecast/icecast.xml

RUN mkdir -p /var/log/icecast \
    && chown -R ${user}:${group} /usr/share/icecast \
    && chown -R ${user}:${group} /var/log/icecast

EXPOSE 8000

USER ${user}
CMD ["icecast", "-c", "/usr/share/icecast/icecast.xml"]
