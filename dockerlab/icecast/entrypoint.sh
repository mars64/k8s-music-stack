#!/bin/sh

/bin/sed -i 's/ICECAST_LOCATION/'"$ICECAST_LOCATION"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_ADMIN/'"$ICECAST_ADMIN"'/g' /usr/share/icecast/icecast.xml
/bin/sed -i 's/ICECAST_HOSTNAME/'"$ICECAST_HOSTNAME"'/g' /usr/share/icecast/icecast.xml

exec /usr/bin/icecast -c /usr/share/icecast/icecast.xml
