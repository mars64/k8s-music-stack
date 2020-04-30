#!/bin/sh

/bin/sed -i 's/ICECAST_STREAM_PASS/'"$ICECAST_STREAM_PASS"'/g' /etc/mpd.conf

exec mpd -v --stdout --no-daemon /etc/mpd.conf
