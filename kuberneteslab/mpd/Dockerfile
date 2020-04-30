FROM alpine:3.11
MAINTAINER @mars64 https://github.com/mars64
# Based on @VITIMan https://github.com/VITIMan

ENV ICECAST_STREAM_PASS="hackme"
ENV MPC_VERSION="0.33-r0"
ENV MPD_VERSION="0.21.16-r1"

ARG user=mpd
ARG group=audio

RUN apk -q update \
    && apk -q --no-progress add mpd="$MPD_VERSION" \
    && apk -q --no-progress add mpc="$MPC_VERSION" \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /var/lib/mpd/music \
    && mkdir -p /var/lib/mpd/playlists \
    && mkdir -p /var/lib/mpd/database \
    && mkdir -p /var/log/mpd/mpd.log \
    && chown -R ${user}:${group} /var/lib/mpd \
    && chown -R ${user}:${group} /var/log/mpd/mpd.log

VOLUME ["/var/lib/mpd/music", "/var/lib/mpd/playlists", "/var/lib/mpd/database"]

COPY mpd.conf /etc/mpd.conf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 6600

CMD ["/bin/sh", "/entrypoint.sh"]
