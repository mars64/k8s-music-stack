FROM alpine:3.6
MAINTAINER @mars64 https://github.com/mars64
# Based on @VITIMan https://github.com/VITIMan 

ENV ICECAST_VERSION="2.4.3-r4"
ENV ICECAST_LOCATION="Deep Bass Station 9"
ENV ICECAST_ADMIN="binary.stereo@gmail.com"
ENV ICECAST_HOSTNAME="localhost"

ARG user=icecast
ARG group=icecast

RUN apk -q update \
    && apk -q --no-progress add icecast="$ICECAST_VERSION" \
    && rm -rf /var/cache/apk/*

COPY silence.ogg /usr/share/icecast/silence.ogg
COPY icecast.xml /usr/share/icecast/icecast.xml
COPY entrypoint.sh /usr/share/icecast/entrypoint.sh

RUN mkdir -p /var/log/icecast \
    && chown -R ${user}:${group} /usr/share/icecast \
    && chown -R ${user}:${group} /var/log/icecast

EXPOSE 8000

USER ${user}
ENTRYPOINT ["/bin/sh", "/usr/share/icecast/entrypoint.sh"]
