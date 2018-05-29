FROM alpine:3.6
MAINTAINER @mars64 https://github.com/mars64
# Based on @VITIMan https://github.com/VITIMan

ENV MPD_VERSION 0.20.8-r0
ENV MPC_VERSION 0.28-r0

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

EXPOSE 6600

CMD ["mpd", "-v", "--stdout", "--no-daemon", "/etc/mpd.conf"]
