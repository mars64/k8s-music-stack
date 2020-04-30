#!/bin/sh

/bin/sed -i 's/ICECAST_ADMIN_PASS/'"$ICECAST_ADMIN_PASS"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_ADMIN_USER/'"$ICECAST_ADMIN_USER"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_HOSTNAME/'"$ICECAST_HOSTNAME"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_LOCATION/'"$ICECAST_LOCATION"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_PORT/'"$ICECAST_PORT"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_RELAY_PASS/'"$ICECAST_RELAY_PASS"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_STREAM_PASS/'"$ICECAST_STREAM_PASS"'/g' /usr/share/icecast/icecast.xml

exec /usr/bin/icecast -c /usr/share/icecast/icecast.xml
